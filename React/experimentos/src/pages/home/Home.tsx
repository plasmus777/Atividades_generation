import React, {useState, useEffect, useContext} from 'react'
import './Home.css'
import homeLogo from '../../assets/img/home.jpg'
import { UserContext } from '../../contexts/UserContext';
import { Link } from 'react-router-dom';

interface interfaceProps{
  title: string;
  description: string;
}

function Home(props:interfaceProps){
  const [loggedIn, setLoggedIn] = useState(false);
  const [completed, setCompleted] = useState(false);
  const [tarefa, setTarefa] = useState('');
  const { nome, setNome } = useContext(UserContext);

  useEffect(() => {
    if(completed){
      setTarefa('Parabéns, você concluiu a tarefa!');
    }
  }, [completed])

  return (
    <>
      <div className='flex justify-center items-center'>
        <h2 className="text-white-900 text-5xl  my-4">Logar</h2>
        <h2 className="text-white-900 text-4xl ">Olá usuário : {nome}</h2>
        <Link to="/login" className="my-4 rounded bg-white-400
        hover:bg-white-900 text-white w-1/2 py-2 flex justify-center">
          Voltar 
        </Link>
      </div>

      <div className='mt-10'></div>

      {loggedIn ? (
        <h3>Bem-vindo ao blog!</h3>
      ) : (
        <button onClick={() => setLoggedIn(true)}>Entrar</button>
      )}

      <h1>{props.title}</h1>
      <p>{props.description}</p>

      <div className='centro mt-10'>
        <h2>Tarefa</h2>
        <h3>{tarefa}</h3>
        <p>Conclua a tarefa.</p>
        <button onClick={() => setCompleted(true)}>Concluir Tarefa</button>
      </div>

      <img src={homeLogo} alt="Imagem da Tela Inicial" className='img mt-10'/>
        
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