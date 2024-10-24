# STEP4
ให้ดัดแปลงโปรแกรมใน Step1 ทำการ Login จากฐานข้อมูลได้จริง โดยใช้ email/password  ที่ใช้ทดสอบ คือ

		pia.fossdal@example.com
		preston

สร้าง 2 ไฟล์ ใน directory Step1/server/ และปรับปรุงให้ตรงกับที่ต้องการ
env.js
dbconfig.js

ใน directory Step1/server/ ติดตั้ง

npm install mysql
	
แก้ไขไฟล์

Step1/server/controllers/auth.js
const { response } = require("express");

let mysql = require('mysql');
const env = require('../env.js');
const config = require('../dbconfig.js')[env];

const login = async (req, res = response) => {
  const { email, password } = req.body;

 // const email = req.body.email;
 // const password  = req.body.password;

  //----------------------

  let dbcon = mysql.createConnection(config);

  const userDetails = "SELECT * FROM users where email = '" + email + "'";
  console.log(userDetails);

  dbcon.query(userDetails, function (err, user) {
    console.log(user);

    if (user.length > 0) {

      if (password !== user[0].password) {
        return res.status(400).json({
          msg: "User / Password are incorrect",
        });
      }

      res.status(200).json({ user })

      /*
            res.json({
              name: "Test User",
              token: "A JWT token to keep the user logged in.",
              msg: "Successful login",
            });
      */

    } else { //  if (user.length > 0) 

      // User not found
      return res.status(401).json({ message: "User not found !" })

    }
  })

};

module.exports = {
  login,
};
