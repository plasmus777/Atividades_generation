import React from 'react'
import './Home.css'
import homeLogo from '../../assets/img/home.jpg'

const Home = () => {
  return (
    <>
        <h1 className='titulo'>Home</h1>

        <img src={homeLogo} alt="Imagem da Tela Inicial" className='img'/>
        
        <h6><a href="https://br.freepik.com/vetores-gratis/numeros-de-queda-digitais-do-codigo-binario-do-estilo-da-matriz-fundo-azul_24600855.htm#query=code&position=2&from_view=search&track=sph&uuid=44060807-c274-41f6-bc71-95a51cc2b726">Imagem de starline</a> no Freepik</h6>
    </>
  )
}

export default Home