import { useNavigate } from "react-router-dom";
import { AuthContext } from "../../contexts/AuthContext";
import { useContext, useEffect } from "react";

function UserProfile(){
  let navigate = useNavigate();

  const { usuario, handleLogout } = useContext(AuthContext);
  const token = usuario.token;

  useEffect(() => {
    if (token === '') {
      alert('Você precisa estar logado.');
      navigate('/login');
    }
  }, [token]);

  return (
    <div className="flex justify-center items-center bg-lime-500 p-4">
        <div className="bg-yellow-500 rounded border-yellow-400 border-double border-2 m-4">
            <h3 className="text-4xl text-white text-bold text-center">{usuario.nome}</h3>

            <div className="border-2 m-4"></div>

            <img src={usuario.foto} alt={`Foto do usuário ${usuario.nome}`} width={156} height={156}className='rounded-full mx-auto border-2 border-white m-4' />

            <h5 className="text-white text-xl m-4">E-mail do usuário: {usuario.usuario}</h5>
        </div>
    </div>
  )
}

export default UserProfile;