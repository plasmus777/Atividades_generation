//import { useNavigate, Link } from 'react-router-dom'
import homeLogo from '../../assets/img/home.jpg'

//let navigate = useNavigate()

function Home(){
  return (
    <>
      <div className="bg-lime-700 flex justify-center aspect-auto">
          <div className='container grid grid-cols-2 text-white'>
            <div className="flex flex-col gap-4 items-center justify-center py-4">
              <h2 className='text-5xl font-bold'>Olá!</h2>
              <p className='text-xl m-5'>Neste blog, é possível escrever sobre qualquer assunto que tiver em mente.</p>
  
              <div className="flex justify-around gap-4">
              
                <button className='rounded bg-white text-blue-800 py-2 px-4'>Ver postagens</button>
              </div>
            </div>
  
            <div className="flex justify-center ">
              <img src={homeLogo} alt="" className='w-2/3' />
      
            </div>
          </div>
        </div>
    </>
  )
}

export default Home