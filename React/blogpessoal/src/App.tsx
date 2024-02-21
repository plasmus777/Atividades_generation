import './App.css';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import { AuthProvider } from './contexts/AuthContext';

import Navbar from './components/navbar/NavBar';
import Footer from './components/footer/Footer';
import Login from './pages/login/Login';
import Home from './pages/home/Home';
import Cadastro from './pages/cadastro/Cadastro';

function App() {
  return (
    <>
    <AuthProvider>
      <BrowserRouter>
        <Navbar />
          <div className='min-h-[80vh] width-100 bg-lime-700'>
            <Routes>
              <Route path="/" element={<Cadastro />} />
              <Route path="/login" element={<Login />} />
              <Route path="/cadastro" element={<Cadastro />} />
              <Route path="/home" element={<Home />} />
            </Routes>
          </div>
          <Footer />
        </BrowserRouter>
      </AuthProvider>
    </>
);
}
export default App;