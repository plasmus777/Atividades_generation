import { useContext, useEffect, useState } from 'react';
import { ThreeCircles } from 'react-loader-spinner';
import { Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../../../contexts/AuthContext';
import Postagem from '../../../models/Postagem';
import { buscar } from '../../../services/Service';
import CardPostagem from '../cardPostagem/CardPostagem';
import { toastAlerta } from '../../../util/toastAlerta';
import { Plus } from '@phosphor-icons/react';

function ListaPostagens() {
    const [postagens, setPostagens] = useState<Postagem[]>([]);

    let navigate = useNavigate();

    const { usuario, handleLogout } = useContext(AuthContext);
    const token = usuario.token;

    useEffect(() => {
        if (token === '') {
            toastAlerta('Você precisa estar logado', 'info');
            navigate('/');
        }
    }, [token]);

    async function buscarPostagens() {
        try {
            await buscar('/postagens', setPostagens, {
                headers: {
                    Authorization: token,
                },
            });
        } catch (error: any) {
            if (error.toString().includes('403')) {
                toastAlerta('O token expirou, favor logar novamente', 'info')
                handleLogout()
            }
        }
    }

    useEffect(() => {
        buscarPostagens();
    }, [postagens.length]);
    return (
        <>
            {postagens.length === 0 && (
                <ThreeCircles
                    visible={true}
                    height="200"
                    width="200"
                    ariaLabel="three-circles-loading"
                    wrapperStyle={{}}
                    wrapperClass="three-circles-wrapper mx-auto"
                />
            )}
            <div className='container mx-auto py-4 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4'>
                {postagens.map((postagem) => (
                    <CardPostagem key={postagem.id} post={postagem} />
                ))}

                <Link to='/cadastroPostagem'><Plus size={300} weight='bold' color='lightgreen' className="border bg-green-600 hover:bg-green-800 flex items-center justify-center rounded-2xl" /></Link>
            </div>
        </>
    );
}

export default ListaPostagens;