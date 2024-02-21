import { useNavigate, useParams } from "react-router-dom"
import { useContext, useEffect, useState } from "react"
import Tema from "../../../models/Tema"
import { AuthContext } from "../../../contexts/AuthContext"
import { buscar, deletar } from "../../../services/Service"

function DeletarTema() {
    const [tema, setTema] = useState<Tema>({} as Tema)

    let navigate = useNavigate()

    const { id } = useParams<{ id: string }>()

    const { usuario, handleLogout } = useContext(AuthContext)
    const token = usuario.token

    async function buscarPorId(id: string) {
        try {
            await buscar(`/temas/${id}`, setTema, {
                headers: {
                    'Authorization': token
                }
            })
        } catch (error: any) {
            if (error.toString().includes('403')) {
                alert('O token expirou, por favor realize o login novamente.')
                handleLogout()
            }
        }
    }

    useEffect(() => {
        if (token === '') {
            alert('Você precisa estar logado.')
            navigate('/login')
        }
    }, [token])

    useEffect(() => {
        if (id !== undefined) {
            buscarPorId(id)
        }
    }, [id])

    function retornar() {
        navigate("/temas")
    }

    async function deletarTema() {
        try {
            await deletar(`/temas/${id}`, {
                headers: {
                    'Authorization': token
                }
            })

            alert('Tema apagado com sucesso.')

        } catch (error) {
            alert('Erro ao apagar o Tema.')
        }

        retornar()
    }

    return (
      <div className='container w-1/3 mx-auto'>
        <h1 className='text-4xl text-center my-4 text-white'>Deletar Tema</h1>
  
        <p className='text-center font-semibold mb-4 text-white'>Você deseja apagar o tema selecionado?</p>
  
        <div className='border flex flex-col rounded-2xl overflow-hidden justify-between'>
        <header className='py-2 px-6 bg-green-600 text-white font-bold text-2xl'>{tema.descricao}</header>
        <p className='p-8 text-3xl bg-lime-400 h-full text-white'>{tema.descricao}</p>
        <div className="flex">
          <button className='text-white bg-lime-500 hover:bg-lime-800 w-full py-2' onClick={retornar}>Voltar</button>
          <button className='w-full text-white bg-red-500 hover:bg-red-800 flex items-center justify-center' onClick={deletarTema}>
            Apagar Tema
          </button>
        </div>
      </div>
      </div>
    )
  }
  
  export default DeletarTema