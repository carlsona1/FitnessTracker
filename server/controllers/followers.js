/*
*/

const express = require('express');
const followers = require('../models/followers.js');
const router = express.Router();
router
    .get('/', (req, res, next) => {
        followers.getAll().then(x=> res.send( x) )
        .catch(next);
    })
    .get('/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        followers.get(id).then(x=> res.send( x ) )
        .catch(next);
    })

    .get('/types', (req, res, next) => {
        followers.allTypes().then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/search', (req, res, next) => {
        followers.search(req.query.q).then(x=> res.send( x ) )
        .catch(next);
    })
    .post('add/', (req, res, next) => {
        followers.add(
            req.body.Following_id,
            req.body.Follower_id,
            req.body.IsAccepted
        ).then(newFollower => {
            res.send( newFollower );
        }).catch(next)
    })
   .put('update/:id', (req, res, next) => {
        followers.update( req.params.id,
            req.body.Following_id,
            req.body.Follower_id,
            req.body.IsAccepted
        ).then(newFollower => {
            res.send( newFollower );
        }).catch(next)
    })
    .delete('delete/:id', (req, res, next) => {
        followers.remove(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;
    