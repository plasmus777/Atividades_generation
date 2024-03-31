import { useContext } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { AuthContext } from '../../contexts/AuthContext'
import { toastAlerta } from '../../util/toastAlerta'

function NavBar() {
  let navigate = useNavigate()

  const { usuario, handleLogout } = useContext(AuthContext)

  function logout() {
      handleLogout()
      toastAlerta('Usuário deslogado com sucesso.', 'info')
      navigate('/login')
  }

  return (
    <>
     <div className='w-full bg-gradient-to-r from-green-900 to-green-600 text-white flex justify-center py-4'>
          <div className="container flex justify-between text-lg">
            <Link to='/home' className='text-2xl font-bold uppercase mx-10'>Blog Pessoal</Link>

            <div className='flex gap-5 mx-5'>
            {(usuario.usuario == '' || usuario == null) && <Link to='/login' className='hover:underline'>Login</Link>}
              <Link to='/home' className='hover:underline'>Home</Link>
              {(usuario.usuario != '' && usuario != null) && 
                <>
                  <Link to='/postagens' className='hover:underline'>Postagens</Link>
                  <Link to='/temas' className='hover:underline'>Temas</Link>
                  <Link to='/perfil' className='hover:underline'>Perfil</Link>
                  <Link to='' onClick={logout} className='hover:underline'>Sair</Link>
                </>
              }
            </div>
          </div>
        </div>
    </>
  )
}

export default NavBar

//<Link to='/cadastroTema' className='hover:underline'>Cadastrar tema</Link>