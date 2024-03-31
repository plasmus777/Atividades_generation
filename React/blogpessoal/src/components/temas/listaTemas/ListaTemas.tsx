import { useContext, useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { AuthContext } from "../../../contexts/AuthContext";
import CardTemas from "../cardTemas/CardTemas";
import Tema from "../../../models/Tema";
import { ThreeCircles } from 'react-loader-spinner';
import { buscar } from "../../../services/Service";
import { Plus } from "@phosphor-icons/react";
import { toastAlerta } from "../../../util/toastAlerta";

function ListaTemas() {
  const [temas, setTemas] = useState<Tema[]>([]);

  let navigate = useNavigate();

  const { usuario, handleLogout } = useContext(AuthContext);
  const token = usuario.token;

  async function buscarTemas() {
    try {
      await buscar('/temas', setTemas, {
        headers: { Authorization: token },
      });
    } catch (error: any) {
      if (error.toString().includes('403')) {
        toastAlerta('O token expirou, por favor realize o login novamente.', 'info')
        handleLogout()
      }
    }
  }

  useEffect(() => {
    if (token === '') {
      toastAlerta('Você precisa estar logado.', 'info');
      navigate('/login');
    }
  }, [token]);

  useEffect(() => {
    buscarTemas();
  }, [temas.length]);

  return (
    <>
      {temas.length === 0 && (
        <ThreeCircles
          visible={true}
          height="200"
          width="200"
          ariaLabel="three-circles-loading"
          wrapperStyle={{}}
          wrapperClass="three-circles-wrapper mx-auto"
        />
      )}
      <div className="flex justify-center w-full py-4">
        <div className="container flex flex-col">
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            {temas.map((tema) => (
              <>
                <CardTemas key={tema.id} tema={tema} />
              </>
            ))}

            <Link to='/cadastroTema'><Plus size={190} weight='bold' color='lightgreen' className="border bg-green-600 hover:bg-green-800 flex items-center justify-center rounded-2xl" /></Link>
          </div>
        </div>
      </div>
    </>
  );
}

export default ListaTemas;