import React, {useState} from 'react'

import Home from './pages/home/Home'
import Tailwind from './pages/home/Tailwind'
import Flexbox from './pages/home/Flexbox'
import Grid from './pages/home/Grid'
import Axios from './pages/home/Axios'
import UserProvider from './contexts/UserContext'
import { BrowserRouter, Route, Routes } from 'react-router-dom'
import Login from './pages/login/Login'

function App(){
  const [valor, setValor] = useState(0);

  function handleClick(){
    setValor(valor + 1);
  }

  return (
    <>
      <UserProvider>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Login />} />
          <Route path="/login" element={<Login />} />
          <Route path="/home" element={<Home title='Blog Pessoal' description='Website do blog pessoal, desenvolvido com React.'/>} />
        </Routes>

      </BrowserRouter>

    </UserProvider>

      <Axios/>

      <div className='mt-10'></div>

      <Grid/>

      <div className='mt-10'></div>

      <Flexbox/>

      <div className='mt-10'></div>

      <Tailwind/>
    
      <div className='mt-10'></div>

      <p>Você apertou no botão {valor} vezes.</p>
      <button onClick={handleClick} className='centro'>Botão</button>
    </>
  )
}

export default App