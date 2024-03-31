import { useNavigate } from "react-router-dom";
import { AuthContext } from "../../contexts/AuthContext";
import { useContext, useEffect, useState } from "react";
import { PencilSimple } from "@phosphor-icons/react";
import { toastAlerta } from "../../util/toastAlerta";

function UserProfile(){
  let navigate = useNavigate();

  const { usuario, handleLogout} = useContext(AuthContext);
  const [edit, setEdit] = useState<boolean>(false);
  const token = usuario.token;

  useEffect(() => {
    if (token === '') {
      toastAlerta('Você precisa estar logado.', 'info');
      navigate('/login');
    }
  }, [token]);

  function handleEdit(){
    if(edit) setEdit(false);
    else setEdit(true);
  }

  return (
    <div className="flex items-center bg-lime-500 p-4 justify-center">
        <div className="bg-gradient-to-r from-green-600 to-green-500 rounded border-green-400 border-double border-2 m-4 p-4">
          <h3 className="text-4xl text-white text-bold text-center">{usuario.nome}</h3>

          <div className="border-2 m-4"></div>

          <img src={usuario.foto} alt={`Foto do usuário ${usuario.nome}`} width={156} height={156}className='rounded-full mx-auto border-2 border-white m-4'/>

          <h5 className="text-white text-xl text-center m-4">E-mail do usuário: {usuario.usuario}</h5>

          <PencilSimple onClick={() => handleEdit()} className="grid col=1 h-8 w-96 border-2 rounded bg-white text-green-700 hover:bg-gray-200 hover:text-green-400 flex-auto mx-4 mt-8 mb-2"/>
        </div>

        {edit && 
        <div className="bg-gradient-to-r from-green-600 to-green-500 rounded border-green-400 border-double border-2 m-2 p-4">
          <form>
            <div>
              <label className="text-white">Nome de usuário:</label>
              <input value={usuario.nome} className="ml-2"></input>
            </div>

            <div className="my-4">
              <label className="text-white">E-mail:</label>
              <input value={usuario.usuario} className="ml-2"></input>
            </div>

            <div>
              <label className="text-white">Foto:</label>
              <input value={usuario.foto} className="ml-2"></input>
            </div>
          </form>
        </div>
        }
    </div>
  )
}

export default UserProfile;