# Podcast audio


## Cài đặt

- chạy lệnh ```npm install ```
- ``` cp .env.example .env ``` tạo file môi trường (chú ý biến ```SERVER_IP, ETOKEN```, đây là 2 giá trị để gọi đến api project laravel).
- https://github.com/LilyRisa/laravel_service_upload_file (đây là project được tạo ra với mục đích lưu trữ file và xác thực thông qua việc tạo ra etoken)
> Việc cài đặt laravel project phải được thực hiện trước 
- Tiếp theo chạy lệnh ``` adonis migration:run ``` để khởi tạo database
- Chạy tiếp lệnh ``` adonis seed --files='UserSeeder.js, CategorySeeder.js ``` để khởi tạo giá trị mặc định
- ``` adonis serve --dev ``` Run project
