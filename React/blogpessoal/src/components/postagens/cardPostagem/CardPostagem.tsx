import { Link } from 'react-router-dom'
import Postagem from '../../../models/Postagem'

interface CardPostagemProps {
    post: Postagem
}

function CardPostagem({ post }: CardPostagemProps) {
    return (
        <div className='border-green-900 border flex flex-col rounded overflow-hidden justify-between'>
            <div className='bg-lime-500 size-full'>
                <div className="flex w-full bg-green-800 py-2 px-4 items-center gap-4">
                    {post.usuario?.foto == null || post.usuario?.foto == ''
                    ? <img src='https://pluspng.com/img-png/user-png-icon-download-icons-logos-emojis-users-2240.png' className='h-12 rounded-full' alt="" />
                    : <img src={post.usuario?.foto} className='h-12 rounded-full' alt="" />
                    }
                    <h3 className='text-lg font-bold text-center uppercase text-white'>{post.titulo}</h3>
                </div>
                <div>
                    <div className='bg-green-700'>
                        <h4 className='text-lg font-semibold uppercase text-white'>{post.usuario?.nome}</h4>
                    </div>
                    <p className='p-2'>{post.texto}</p>
                    <p className='p-2'>Tema: {post.tema?.descricao}</p>
                    <p className='p-2'>Data: {new Intl.DateTimeFormat(undefined, {
                        dateStyle: 'full',
                        timeStyle: 'medium',
                    }).format(new Date(post.data))}</p>
                </div>
            </div>
            <div className="flex">
                <Link to={`/editarPostagem/${post.id}`} className='w-full text-white bg-green-400 hover:bg-green-800 flex items-center justify-center py-2'>
                    <button>Editar</button>
                </Link>
                <Link to={`/deletarPostagem/${post.id}`} className='text-white bg-red-500 hover:bg-red-700 w-full flex items-center justify-center'>
                    <button>Deletar</button>
                </Link>
            </div>
        </div>
    )
}

export default CardPostagem