import { useNavigate } from 'react-router-dom'
import ListaPostagens from '../../components/postagens/listaPostagens/ListaPostagens'
import ModalPostagem from '../../components/postagens/modalPostagem/ModalPostagem'

function Home() {
  let navigate = useNavigate()

  return (
    <>
      <div className="bg-lime-700 flex justify-center aspect-auto">
        <div className='container grid grid-cols-2 text-white'>
          <div className="flex flex-col gap-4 items-center justify-center py-4">
            <h2 className='text-5xl font-bold'>Olá!</h2>
            <p className='text-xl m-5'>Neste blog, é possível escrever sobre qualquer assunto que tiver em mente.</p>

            <div className="flex justify-around gap-4">
              <ModalPostagem />
              <button className='rounded bg-lime-500 hover:bg-lime-900 text-white py-2 px-4' onClick={() => navigate('/postagens')}>Ver postagens</button>
            </div>
          </div>

          <div className="flex justify-center ">
            <img src="https://icon-library.com/images/nature-icon/nature-icon-12.jpg" alt="" className='w-2/3' />

          </div>
        </div>
      </div>

      <ListaPostagens />
    </>
  )
}

export default Home