const express = require('express');
const bodyParser = require('body-parser');
const cors = require("cors");
const app = express();
const mysql = require('mysql');

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password:'',
    database: 'disc',
});

app.use(cors())
app.use(express.json())
app.use(bodyParser.urlencoded({extended: true}))

// Question route
app.get("/question/get", (req, res) => {
    const sqlGet = "SELECT * FROM master_questions";
    db.query(sqlGet, (err, result)=>{
        res.send(result);
    })
});

// Question route
app.get("/sort_question/get", (req, res) => {
    const sort_number = req.query.sort_number;
    // console.log(id_question);
    const sqlGet = "SELECT * FROM master_questions WHERE sort_number = ?";
    db.query(sqlGet, [sort_number], (err, result)=>{
        res.send(result);
    })
});

app.post("/question/insert", (req, res) => {
    const movieName = req.body.movieName;
    const movieReview = req.body.movieReview;

    const sqlInsert = "INSERT INTO movie_reviews (movieName, movieReview) VALUES (?,?)"
    db.query(sqlInsert, [movieName, movieReview], (err, result)=>{
        console.log(err)
    })
});

app.delete('/question/delete/:movieName', (req, res) => {
    const name = req.params.movieName;
    const sqlDelete = "DELETE FROM movie_reviews WHERE movieName = ?";

    db.query(sqlDelete, name, (err, result) => {
       if (err) console.log(err)
    });
});

app.put('/question/update', (req, res)=> {
    const name = req.body.movieName;
    const review = req.body.movieReview;
    const sqlUpdate = "UPDATE movie_reviews SET movieReview = ? WHERE movieName = ?";

    db.query(sqlUpdate, [review, name], (err, result) => {
       console.log(err);
    });
});

// SUB ROUTE
app.get("/sub/get", (req, res) => {
    const id_question = req.query.id_question;
    // console.log(id_question);
    const sqlGet = "SELECT * FROM master_sub_questions WHERE id_question = ?";
    db.query(sqlGet, [id_question], (err, result)=>{
        res.send(result);
    })
});

app.post("/sub/insert", (req, res) => {
    const questions = req.body.question;
    questions.forEach(function(item, index){
        // console.log(item);
        const id_sub_question = item.id;
        const m = item.answer_m;
        const l = item.answer_l;
        const id_schedule = '1';
        const id_employee = '1';
        console.log(l);
        const sub_question = "INSERT INTO answers (m, l, id_employee, id_sub_question, id_schedule) VALUES (?,?,?,?,?)";
        db.query(sub_question, [m, l, id_employee, id_sub_question, id_schedule], (err, r)=>{

        });
    });
    // const movieName = req.body.movieName;
    // const movieReview = req.body.movieReview;

    // const sqlInsert = "INSERT INTO movie_reviews (movieName, movieReview) VALUES (?,?)"
    // db.query(sqlInsert, [movieName, movieReview], (err, result)=>{
    //     console.log(err)
    // })
});

app.delete('/sub/delete/:movieName', (req, res) => {
    const name = req.params.movieName;
    const sqlDelete = "DELETE FROM movie_reviews WHERE movieName = ?";

    db.query(sqlDelete, name, (err, result) => {
       if (err) console.log(err)
    });
});

app.put('/sub/update', (req, res)=> {
    const name = req.body.movieName;
    const review = req.body.movieReview;
    const sqlUpdate = "UPDATE movie_reviews SET movieReview = ? WHERE movieName = ?";

    db.query(sqlUpdate, [review, name], (err, result) => {
       console.log(result);
    });
});

app.listen(3001, () => {
    console.log("run on 3001");
})
