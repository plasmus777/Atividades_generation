import React, {useState, useEffect} from 'react'
import './Home.css'
import homeLogo from '../../assets/img/home.jpg'

interface interfaceProps{
  title: string;
  description: string;
}

function Home(props:interfaceProps){
  const [loggedIn, setLoggedIn] = useState(false);
  const [completed, setCompleted] = useState(false);
  const [tarefa, setTarefa] = useState('');

  useEffect(() => {
    if(completed){
      setTarefa('Parabéns, você concluiu a tarefa!');
    }
  }, [completed])

  return (
    <>
      {loggedIn ? (
        <h3>Bem-vindo ao blog!</h3>
      ) : (
        <button onClick={() => setLoggedIn(true)}>Entrar</button>
      )}

      <h1>{props.title}</h1>
      <p>{props.description}</p>

      <div className='centro'>
        <h2>Tarefa</h2>
        <h3>{tarefa}</h3>
        <p>Conclua a tarefa.</p>
        <button onClick={() => setCompleted(true)}>Concluir Tarefa</button>
      </div>

      <img src={homeLogo} alt="Imagem da Tela Inicial" className='img'/>
        
      <h6><a href="https://br.freepik.com/vetores-gratis/numeros-de-queda-digitais-do-codigo-binario-do-estilo-da-matriz-fundo-azul_24600855.htm#query=code&position=2&from_view=search&track=sph&uuid=44060807-c274-41f6-bc71-95a51cc2b726">Imagem de starline</a> no Freepik</h6>
    </>
  )
}

/*
const Home = () => {
  return (
    <>
        <h1 className='titulo'>Home</h1>

        <img src={homeLogo} alt="Imagem da Tela Inicial" className='img'/>
        
        <h6><a href="https://br.freepik.com/vetores-gratis/numeros-de-queda-digitais-do-codigo-binario-do-estilo-da-matriz-fundo-azul_24600855.htm#query=code&position=2&from_view=search&track=sph&uuid=44060807-c274-41f6-bc71-95a51cc2b726">Imagem de starline</a> no Freepik</h6>
    </>
  )
}
*/

export default Home