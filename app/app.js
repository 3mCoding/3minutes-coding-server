const express = require('express');
const app = express();

const userRouter = require('./router/user');
app.use('/user', userRouter);

app.get('/', function(req, res){
    res.send('3분 코딩');
})


app.listen(3000, () => console.log('3000번 포트 대기'));