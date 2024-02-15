import React, {useState} from 'react'
import Home from './pages/home/Home'

function App(){
  const [valor, setValor] = useState(0);

  function handleClick(){
    setValor(valor + 1);
  }

  return (
    <>
      <Home title='Blog Pessoal' description='Website do blog pessoal, desenvolvido com React.'/>
    
      <p>Você apertou no botão {valor} vezes.</p>
      <button onClick={handleClick} className='centro'>Botão</button>
    </>
  )
}

export default App