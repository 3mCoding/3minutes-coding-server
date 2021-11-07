const express = require('express');
const router = express();
const bcrypt = require("bcryptjs");
const connection = require('../mysql');
const moment = require('moment');

router.use(express.urlencoded({
  extended: false
})); //application/x-www-form-urlencoded
router.use(express.json());

router.get('/', function (req, res) {
  res.send('user');
});

//회원가입 기능 구현
router.post('/join', function (req, res) {
  const user = req.body;
  const salt = 10;
  const date = moment().format('YYYY-MM-DD HH:mm:ss');
  const password = bcrypt.hashSync(user.password, salt); // 비밀번호 암호화


  var sqlEmailCheck = 'select * from user where email = ?';
  connection.query(sqlEmailCheck, user.email, function (err, result) {
    if (result.length !== 0) {
      res.json({
        message: "이미 가입된 이메일입니다."
      })
    } else {
      connection.query(`INSERT INTO user VALUES ('${user.email}', '${user.student_num}', '${user.name}', '${password}', 1, '${date}')`, function (err, result) {
        let resultCode = 404;
        let message = '에러가 발생했습니다';
        if (err)
          console.log(err);

        else {
          resultCode = 200;
          message = '회원가입에 성공했습니다.';
        }
        res.json({
          'code': resultCode,
          'message': message
        });
      })
    }
  });
});


//로그인
router.post('/login', function (req, res) {
  const email = req.body.email;
  const pw = req.body.password;
  const sql = 'select * from user where email = ?';

  connection.query(sql, email, function (err, result) {
    let resultCode = 404;
    let message = '에러가 발생했습니다';
    let step = null;
    if (err)
      console.log(err);
    else {
      if (result.length === 0) {
        resultCode = 204;
        message = '가입하지 않은 계정입니다.';
      } else if (!(bcrypt.compareSync(pw, result[0].password))) {
        resultCode = 204;
        message = '비밀번호가 일치하지 않습니다.';
      } else {
        resultCode = 200;
        message = '로그인 되었습니다.';
        step = result[0].step;
      }
    }
    res.json({
      'code': resultCode,
      'message': message,
      'step' : step
    });
  })
});

router.get('/list', function (req, res) {
  let order = req.body.order;
  let sql;
  switch(order){
    case 0: sql = 'select student_num, name, step from user'; break;
    case 1: sql = 'select student_num, name, step from user order by student_num ASC'; break;
    case 2: sql = 'select student_num, name, step from user order by student_num DESC'; break;
    case 3: sql = 'select student_num, name, step from user order by step ASC'; break;
  }
  
  connection.query(sql, function (err, result) {
      if (err) return res.sendStatus(400);
      res.json(result);
      console.log("result : " + JSON.stringify(result));
  });
});
module.exports = router;