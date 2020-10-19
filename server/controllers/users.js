/*
*/

const express = require('express');
const users = require('../models/users')

const router = express.Router();

router.get('/',(req, resm, next) => {
        users.getAll().then(x=> res.send( x ))
        .catch(next);
    })
    .get('/search', (req, res) => {
        users.search(req.query.q).then(x=> res.send( x ))
        .catch(next);
    })

    .post('/', (req, res, next) => {
        const newUser = users.add(req.query.name, req.query.age).then(newUser =>  {
            res.send( newUser );
        }).catch(next)
        
    })

module.exports = router;