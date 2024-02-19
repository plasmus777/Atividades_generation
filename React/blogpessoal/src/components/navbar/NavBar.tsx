import { Link } from 'react-router-dom'

function NavBar() {
  return (
    <>
     <div className='w-full bg-green-900 text-white flex justify-center py-4'>
          <div className="container flex justify-between text-lg">
            <div className='text-2xl font-bold uppercase mx-10'>Blog Pessoal</div>

            <div className='flex gap-4'>
              <Link to='/login' className='hover:underline'>Login</Link>
              <Link to='/home' className='hover:underline'>Home</Link>
              <div className='hover:underline'>Postagens</div>
              <div className='hover:underline'>Temas</div>
              <div className='hover:underline'>Cadastrar tema</div>
              <div className='hover:underline'>Perfil</div>
              <div className='hover:underline'>Sair</div>
            </div>
          </div>
        </div>
    </>
  )
}

export default NavBar