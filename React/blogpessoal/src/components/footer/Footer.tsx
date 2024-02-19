import { Envelope, GithubLogo, LinkedinLogo } from '@phosphor-icons/react'

function Footer() {
    return (
      <>
          <div className="bg-lime-700 flex justify-center text-white m-5">
            <div className="container flex flex-col items-center py-4">
              <p className='text-xl font-bold'>Blog Pessoal | Copyright: </p>
              <p className='text-lg'>Fernando Lopes</p>
              <div className='flex gap-6 m-5'>
                <LinkedinLogo size={48} weight='bold' href='https://www.linkedin.com/in/fernando-barbosa-ferreira-lopes/'/>
                <GithubLogo size={48} weight='bold' href='https://github.com/plasmus777'/>
                <Envelope size={48} weight='bold' />
              </div>
            </div>
          </div>
        </>
    )
}
  
  export default Footer