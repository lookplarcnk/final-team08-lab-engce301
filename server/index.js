// Section 1
const express = require('express');
const axios = require('axios');
const path = require('path');
const mysql = require('mysql');  // ใช้สำหรับการเชื่อมต่อกับ MySQL

// Section 2: สร้างการเชื่อมต่อกับฐานข้อมูล
const db = mysql.createConnection({
    host: 'localhost',  // แก้ไขให้ตรงกับการตั้งค่าของคุณ
    user: 'root',
    password: '',  // ใส่รหัสผ่าน MySQL ของคุณ
    database: 'term_project_db'  // ชื่อฐานข้อมูลที่คุณต้องการใช้
});

db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to MySQL database');
});

// Section 3: ตั้งค่า Express และ Static Files
const app = express();
app.use(express.json());  // เพื่อรองรับ JSON ในการรับข้อมูล
app.use(express.static(path.join(__dirname, '..', 'public')));

// Section 4: Route สำหรับหน้า Home
app.get('/', (req, res) => {
    res.send("<h1>Home page</h1>");
});

// Route สำหรับดึงผู้ใช้จาก API ภายนอก (ไม่เปลี่ยนแปลง)
app.get('/users', (req, res) => {
    axios.get('https://randomuser.me/api/?page=1&results=10')
        .then(response => {
            res.send(response.data);
        })
        .catch(error => {
            res.status(500).send("Error fetching users");
        });
});

// Section 5: Route สำหรับการ Insert ผู้ใช้ใหม่ลงในฐานข้อมูล
app.post('/insert-user', (req, res) => {
    const { gender, name_title, name_first, name_last, country, email, username, password, picture_large, picture_medium, picture_thumbnail } = req.body;

    const sqlInsert = `
        INSERT INTO users (gender, name_title, name_first, name_last, country, email, username, password, picture_large, picture_medium, picture_thumbnail)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    // เพิ่มข้อมูลผู้ใช้ลงในฐานข้อมูล
    db.query(sqlInsert, [gender, name_title, name_first, name_last, country, email, username, password, picture_large, picture_medium, picture_thumbnail], (err, result) => {
        if (err) {
            return res.status(500).send("Error inserting user");
        }
        res.send("User added successfully");
    });
});

// Section 6: เริ่มเซิร์ฟเวอร์
app.listen(3000, () => {
    console.log('Server started on port 3000');
});