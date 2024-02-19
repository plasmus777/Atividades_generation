import React, {useState} from 'react'
import Home from './pages/home/Home'
import Tailwind from './pages/home/Tailwind'
import Flexbox from './pages/home/Flexbox'
import Grid from './pages/home/Grid'

function App(){
  const [valor, setValor] = useState(0);

  function handleClick(){
    setValor(valor + 1);
  }

  return (
    <>
      <Grid/>

      <div className='mt-10'></div>

      <Flexbox/>

      <div className='mt-10'></div>

      <Tailwind/>

      <div className='mt-10'></div>

      <Home title='Blog Pessoal' description='Website do blog pessoal, desenvolvido com React.'/>
    
      <div className='mt-10'></div>

      <p>Você apertou no botão {valor} vezes.</p>
      <button onClick={handleClick} className='centro'>Botão</button>
    </>
  )
}

export default App