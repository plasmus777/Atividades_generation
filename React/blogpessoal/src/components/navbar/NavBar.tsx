import { useContext } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { AuthContext } from '../../contexts/AuthContext'

function NavBar() {
  let navigate = useNavigate()

  const { usuario, handleLogout } = useContext(AuthContext)

  function logout() {
      handleLogout()
      alert('Usuário deslogado com sucesso.')
      navigate('/login')
  }

  return (
    <>
     <div className='w-full bg-green-900 text-white flex justify-center py-4'>
          <div className="container flex justify-between text-lg">
            <Link to='/home' className='text-2xl font-bold uppercase mx-10'>Blog Pessoal</Link>

            <div className='flex gap-5 mx-5'>
              <Link to='/login' className='hover:underline'>Login</Link>
              <Link to='/home' className='hover:underline'>Home</Link>
              <div className='hover:underline'>Postagens</div>
              <Link to='/temas' className='hover:underline'>Temas</Link>
              <div className='hover:underline'>Perfil</div>
              <Link to='' onClick={logout} className='hover:underline'>Sair</Link>
            </div>
          </div>
        </div>
    </>
  )
}

export default NavBar

//<Link to='/cadastroTema' className='hover:underline'>Cadastrar tema</Link>