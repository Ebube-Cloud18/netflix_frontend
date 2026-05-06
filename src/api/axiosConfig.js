import axios from 'axios';

export default axios.create({
    baseURL: 'http://3.20.237.177:8080',
    headers: {
        'Content-Type': 'application/json',
    },
    });