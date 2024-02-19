import './App.css';

import { BrowserRouter, Route, Routes } from 'react-router-dom';

import Home from './pages/home/Home';
import Navbar from './components/navbar/NavBar';
import Footer from './components/footer/Footer';
import Login from './pages/login/Login';

function App() {
  return (
    <>
    <BrowserRouter>
        <Navbar />
          <div className='min-h-[80vh]'>
            <Routes>
              <Route path="/" element={<Home />} />
              <Route path="/login" element={<Login />} />
              <Route path="/home" element={<Home />} />
            </Routes>
          </div>
          <Footer />
        </BrowserRouter>
    </>
);
}
export default App;