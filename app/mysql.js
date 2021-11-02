const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '0620',
    database: 'tmc_db'
});
 
connection.connect((err) => {
    if (err) {
        console.log(err);
        connection.end();
        throw err;
    } else {
        console.log("DB 접속 성공");
    }
});

module.exports = connection;