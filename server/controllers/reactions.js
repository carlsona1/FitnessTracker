/*
*/

const express = require('express');
const reactions = require('../models/reactions.js');
const router = express.Router();
router
    .get('/', (req, res, next) => {
        reactions.getAll().then(x=> res.send( x) )
        .catch(next);
    })
    .get('/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        reactions.get(id).then(x=> res.send( x ) )
        .catch(next);
    })

    .get('/types', (req, res, next) => {
        reactions.allTypes().then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/search', (req, res, next) => {
        reactions.search(req.query.q).then(x=> res.send( x ) )
        .catch(next);
    })
    .post('/', (req, res, next) => {
        reactions.add(
            req.body.Owner_id,
            req.body.Emoji,
            req.body.Workout_id,
        ).then(newReaction => {
            res.send( newReaction );
        }).catch(next)
    })
   .put('/:id', (req, res, next) => {
        reactions.update( req.params.id,
            req.body.Owner_id,
            req.body.Emoji,
            req.body.Workout_id,
        ).then(newReaction => {
            res.send( newReaction );
        }).catch(next)
    })
    .delete('/:id', (req, res, next) => {
        reactions.remove(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;
    