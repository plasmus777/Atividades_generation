import FormularioPostagem from '../formularioPostagem/FormularioPostagem';

import 'reactjs-popup/dist/index.css';
import Popup from 'reactjs-popup';

import './ModalPostagem.css'

function ModalPostagem() {
    return (
        <>
            <Popup
                trigger={<button className='rounded px-4 bg-yellow-500 hover:bg-yellow-800'>Nova postagem</button>} modal>
                    
                <FormularioPostagem />
            </Popup>
        </>
    );
}

export default ModalPostagem;