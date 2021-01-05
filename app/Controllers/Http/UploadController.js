'use strict'

const FormData = use('form-data')
const StorageApi = use('App/Service/StorageApi')
const axios = use('axios')

class UploadController {
    async UploadFromServer({request, response}){
        const server = new StorageApi('/api/upload')
        await request.multipart.file('file', {}, async (file) => {
            let formData = new FormData()
            formData.append('file', file.stream)
            let formHeaders = formData.getHeaders()
            let data = await server.post(formData, formHeaders['content-type'])
            return response.type('application/json')
                        .send(data)
        }).process()
    }
}

module.exports = UploadController
