const express = require('express');
const router = express();
const connection = require('../mysql');

router.use(express.urlencoded({
    extended: false
  })); //application/x-www-form-urlencoded
  router.use(express.json());

router.get('/', function (req, res) {
    res.send('question');
})
// /question/type/java?no=1
router.get('/type/:type', function (req, res) {
    console.log("ahkak");
    let type = req.params.type;
    let no = req.query.no;
    let sql = 'select * from question where type = ? AND no = ?';
    let params = [type, no];
    console.log(type, no);
    connection.query(sql, params, function (err, result) {
        if (err) return res.sendStatus(400);

        res.json(result);
        console.log("result : " + JSON.stringify(result));
    });
});
router.get('/list', function (req, res) {
    let sql = 'select no, title from question where type = "java"';
    connection.query(sql, function (err, result) {
        if (err) return res.sendStatus(400);
        res.json(result);
        console.log("result : " + JSON.stringify(result));
    });
});

router.post('/answer', function (req, res) {
    const id = req.body.id;
    const answers = req.body.answers;
    const sql = 'select answers from question_answer where id = ?';
console.log(id, answers);
    connection.query(sql, id, function (err, result) {
        let resultCode = 404;
        let message = '에러가 발생했습니다';
        let pass = 0;
        if (err)
            console.log(err);
        else {
            if (result[0].answers === answers) {
                resultCode = 200;
                message = '정답입니다.';
                pass = 1;
            } else {
                resultCode = 204;
                message = '틀렸습니다. 다시 한 번 시도해 주세요.';
                pass = 0;
            }
        }
        res.json({
            'code': resultCode,
            'message': message,
            'pass': pass
        });
    })
});

router.get('/description', function (req, res) {
    //let type = req.params.type;
    let id = req.query.id;
    let sql = 'select d.id, d.desc_path, q.title from question_desc d INNER JOIN question q on d.id = q.id where q.id = ?';
    //let params = [type, no];

    connection.query(sql, id, function (err, result) {
        if (err) return res.sendStatus(400);

        res.json(result);
        console.log("result : " + JSON.stringify(result));
    });
});

router.post('/recommend', function (req, res) {
    let content = req.query.content;
    let stuNum = req.query.student_num;

    connection.query(`INSERT INTO question_rec(content, student_num) VALUES ('${content}', '${stuNum}')`, function (err, result) {
        res.json({
            'message' : '제출 되었습니다.'
        })
    });
});
module.exports = router;