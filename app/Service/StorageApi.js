'use strict'
const axios = use('axios')
const Env = use('Env')
class StorageApi {
    static serverip = Env.get('SEVER_IP', 'http://127.0.0.1') //laravel storage
    constructor(path) {
        this.path = StorageApi.serverip + path;
        //this.method = method;
        this.header = Env.get('ETOKEN', '');
      }
    async get(){
        let json = await axios.get(this.path, { headers: this.header })
        return json
    }
    async post(data, type){
        let json = await axios.post(this.path, data, {
            headers: {
                Authorization: this.header,
                'Content-Type': type
            }
          })
        return json.data
    }

    async put(data){
        let json = await axios.put(this.path, data, {
            headers: {
                Authorization: this.header,
            }
          })
        return json

    }
    static GetPathApi(param = ''){
        return StorageApi.serverip + param
    }
}

module.exports = StorageApi