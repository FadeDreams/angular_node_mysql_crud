const express = require('express')
const cors = require('cors')
var mysql = require('mysql')

var fileupload = require('express-fileupload');
var fs = require('fs');

const app = express();
const port = process.env.PORT || 49146;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.use(fileupload());
// app.use(fileUpload({
//     createParentPath: true
// }));
app.use('/imgs', express.static(__dirname+'/imgs'));

var connection = mysql.createConnection({
    host: '172.21.48.1',
    user: 'root',
    password: '1',
    database: 'node_ang_db1'
  })

app.listen(port, ()=>{
    console.log(`port ${port} is ready`);
    connection.connect((err)=>{
        if(err){
            throw err;
        }
        console.log('connected to db')
    });
});

app.get('/', (req, res)=>{
    res.send('hi');
});

app.get('/api/dep', (req, res)=>{
    let query = ` select * from dep `;
    connection.query(query, (err, rows, fields)=>{
        if(err){
            res.send('hi');
        }
        res.send(rows);
    })
});

app.post('/api/dep', (req, res)=>{
    let query = ` insert into dep (name) values (?) `;
    // let vals = [req.body['dep_name']];
    let vals = [req.body.name]; 
    console.log(req.body.name);
    connection.query(query, vals, (err, rows, fields)=>{
        if(err){
            // res.send('insertion failed');
            res.send(err.message);
        }
        res.json('added successfully');
        // res.send(rows);
    })
});

app.put('/api/dep', (req, res)=>{
    let query = ` update dep set name= ? where id= ? `;
    let vals = [
        req.body.name,
        req.body.id
    ]; 
    console.log(req.body.dep_name);
    console.log(req.body.id);
    connection.query(query, vals, (err, rows, fields)=>{
        if(err){
            // res.send('insertion failed');
            res.send(err.message);
        }
        res.json('updated successfully');
        // res.send(rows);
    })
});

app.put('/api/dep/:id', (req, res)=>{
    let query = ` update dep set name= ? where id= ? `;
    pid=parseInt(req.params.id);
    let vals = [
        req.body.dep_name,
        pid
        // req.body.id
    ]; 
    // console.log("pid"+pid);
    // console.log(req.body.dep_name);
    // console.log(req.body.id);
    connection.query(query, vals, (err, rows, fields)=>{
        if(err){
            res.send(err.message);
        }
        res.json('updated successfully by id');
        // res.send(rows);
    })
});

app.delete('/api/dep/:id', (req, res)=>{
    let query = ` delete from dep where id= ? `;
    pid=parseInt(req.params.id);
    let vals = [
        // req.body.dep_name,
        pid
        // req.body.id
    ]; 
    console.log("pid"+pid);
    // console.log(req.body.dep_name);
    // console.log(req.body.id);
    connection.query(query, vals, (err, rows, fields)=>{
        if(err){
            res.send(err.message);
        }
        res.json('deleted successfully by id');
        // res.send(rows);
    })
});

// emp
// app.get('/api/emp', (req, res)=>{
//     let query = ` select * from emp `;
//     connection.query(query, (err, rows, fields)=>{
//         if(err){
//             res.send(err.message);
//         }
//         res.send(rows);
//     })
// });

// app.post('/api/emp', (req, res)=>{
//     let query = ` insert into emp (name,dep,joindate,img) values (?,?,?,?) `;
//     // let vals = [req.body['dep_name']];
//     let vals = [
//         req.body.name,
//         req.body.dep,
//         req.body.joindate,
//         req.body.img,
//     ]; 
//     console.log(req.body.dep_name);
//     connection.query(query, vals, (err, rows, fields)=>{
//         if(err){
//             // res.send('insertion failed');
//             res.send(err.message);
//         }
//         res.json('added successfully');
//         // res.send(rows);
//     })
// });

// app.put('/api/dep', (req, res)=>{
//     let query = ` update emp set name=?, dep=?, joindate=?, img=?
//      where id= ? `;
//     let vals = [
//         req.body.name,
//         req.body.dep,
//         req.body.joindate,
//         req.body.img,
//         req.body.id
//     ]; 
//     console.log(req.body.name);
//     console.log(req.body.id);
//     connection.query(query, vals, (err, rows, fields)=>{
//         if(err){
//             // res.send('insertion failed');
//             res.send(err.message);
//         }
//         res.json('updated successfully');
//         // res.send(rows);
//     })
// });

// // app.put('/api/dep/:id', (req, res)=>{
// //     let query = ` update dep set name= ? where id= ? `;
// //     pid=parseInt(req.params.id);
// //     let vals = [
// //         req.body.dep_name,
// //         pid
// //         // req.body.id
// //     ]; 
// //     // console.log("pid"+pid);
// //     // console.log(req.body.dep_name);
// //     // console.log(req.body.id);
// //     connection.query(query, vals, (err, rows, fields)=>{
// //         if(err){
// //             res.send(err.message);
// //         }
// //         res.json('updated successfully by id');
// //         // res.send(rows);
// //     })
// // });

// app.delete('/api/dep/:id', (req, res)=>{
//     let query = ` delete from emp where id= ? `;
//     pid=parseInt(req.params.id);
//     let vals = [
//         // req.body.dep_name,
//         pid
//         // req.body.id
//     ]; 
//     // console.log("pid"+pid);
//     // console.log(req.body.dep_name);
//     // console.log(req.body.id);
//     connection.query(query, vals, (err, rows, fields)=>{
//         if(err){
//             res.send(err.message);
//         }
//         res.json('deleted successfully by id');
//         // res.send(rows);
//     })
// });

// app.post('/api/emp/savefile', (req, res)=>{

//     fs.writeFile("./imgs/" + req.files.file.name,
//         req.files.file.data,
//         (err) => {
//         // throws an error, you could also catch it here
//             if (err) throw err;
//         // success case, the file was saved
//         console.log('file saved!');
//     });
// });