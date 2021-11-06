const express = require('express');
const router = express();
const connection = require('../mysql');

router.get('/', function(req, res){
    res.send('question');
})
// /question/java?no=1
router.get('/:type', function (req, res) {
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

module.exports = router;