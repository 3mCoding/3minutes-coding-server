const mysql = require('mysql');

const connection = mysql.createConnection({
    host: process.env.host,
    port: process.env.port,
    user: process.env.user,
    password: process.env.password,
    database: process.env.database
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