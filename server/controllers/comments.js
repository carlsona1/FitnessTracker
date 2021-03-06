/*
*/

const express = require('express');
const comments = require('../models/comments.js');
const router = express.Router();
router
    .get('/', (req, res, next) => {
        comments.getAll().then(x=> res.send( x) )
        .catch(next);
    })
    .get('/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        comments.get(id).then(x=> res.send( x ) )
        .catch(next);
    })

    /* .get('/met/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        comments.getMET(id).then(x=> res.send( x ) )
        .catch(next);
    }) */

    .get('/types', (req, res, next) => {
        comments.allTypes().then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/search', (req, res, next) => {
        comments.search(req.query.q).then(x=> res.send( x ) )
        .catch(next);
    })
    .post('/', (req, res, next) => {
        comments.add(
            req.body.Owner_id,
            req.body.Privacy_Setting,
            req.body.Start_Time,
            req.body.End_Time,
            req.body.Exercise_Type,
            req.body.Note,
            req.body.Distance,
            req.body.Sets,
            req.body.Reps_Per_Set,
            req.body.Weight,
        ).then(newWorkout => {
            res.send( newWorkout );
        }).catch(next)
    })
   .put('/:id', (req, res, next) => {
        comments.update( req.params.id,
            req.body.Privacy_Setting,
            req.body.Start_Time,
            req.body.End_Time,
            req.body.Exercise_Type,
            req.body.Note,
            req.body.Distance,
            req.body.Sets,
            req.body.Reps_Per_Set,
            req.body.Weight,
        ).then(newWorkout => {
            res.send( newWorkout );
        }).catch(next)
    })
    .delete('/:id', (req, res, next) => {
        comments.remove(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;
    