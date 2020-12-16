'use strict'

/*
|--------------------------------------------------------------------------
| Factory
|--------------------------------------------------------------------------
|
| Factories are used to define blueprints for database tables or Lucid
| models. Later you can use these blueprints to seed your database
| with dummy data.
|
*/

/** @type {import('@adonisjs/lucid/src/Factory')} */
    const Factory = use('Factory')
    const Hash = use('Hash')
    const Database = use('Database')
    Factory.blueprint('App/Models/User', async (faker) => {
        return {
        username: 'Admin',
        email: 'minh@gmail.com',
        password: await Hash.make('oanhngungoc'),
        fullname: 'Bùi Văn Minh',
        authority: 2
        }
    })
    Factory.blueprint('App/Models/User', async (faker) => {
        return {
        username: 'MinhVan',
        email: 'minhbv@gmail.com',
        password: await Hash.make('oanhngungoc'),
        fullname: 'Văn Minh',
        authority: 1
        }
    })
    Factory.blueprint('App/Models/User', async (faker) => {
        return {
        username: 'anonymous',
        email: 'anonymous@gmail.com',
        password: await Hash.make('oanhngungoc'),
        fullname: 'anonymous',
        authority: 0
        }
    })
    Factory.blueprint('App/Models/PublicMess', async (faker) => {
        return {
        user_sent: Math.floor(Math.random() * 2) + 1,
        messenges: 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .',
        }
    })
    Factory.blueprint('App/Models/Comment', async (faker) => {
        return {
        user_create: 1,
        episode_id: 4,
        comment: 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét li.',
        }
    })
    Factory.blueprint('App/Models/Comment', async (faker) => {
        return {
        user_create: Math.floor(Math.random() * 2) + 1,
        episode_id: 4,
        comment: 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét li.',
        }
    })
    Factory.blueprint('App/Models/Category', async (faker) => {
        return {
        name : 'unknows',
        user_create: Math.floor(Math.random() * 2) + 1,
        }
    })
