import React from 'react'

import axios from 'axios'
import { useEffect, useState } from 'react';

interface User{
    id: number;
    name: string;
}

const Axios = () => {
    const [users, setUsers] = useState<User[]>([]);

    useEffect(() => {
        axios.get<User[]>('https://jsonplaceholder.typicode.com/users')
    .then(response => {
      setUsers(response.data);
    })
    .catch(error => {
      console.log(error);
    });
    }, [])

  return (
    <>
        <div>
        <h1>Teste do Axios - Lista de usuários</h1>
        <ul>
            {users.map(user => (
            <li key={user.id}>{user.name}</li>
            ))}
        </ul>
        </div>
    </>
  )
}

export default Axios