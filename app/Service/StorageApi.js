'use strict'
const axios = require('axios')
const Env = use('Env')
class StorageApi {
    static serverip = Env.get('SEVER_IP', 'http://127.0.0.1') //laravel storage
    constructor(path,method,header = {'Authorization': Env.get('ETOKEN', '')}) {
        this.path = StorageApi.serverip + path;
        this.method = method;
        this.header = header;
      }
    async get(){
        let json = await axios.get(this.path, { headers: this.header })
        return json
    }
    async post(data){
        let json = await axios.post(this.path, data, {
            headers: this.header
          })
        return json

    }
    static GetPathApi(param = ''){
        return StorageApi.serverip + param
    }
}

module.exports = StorageApi