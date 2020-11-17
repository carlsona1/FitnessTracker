/*
*/

const express = require('express');
const workouts = require('../models/workouts.js');
const router = express.Router();
router
    .get('/', (req, res, next) => {
        workouts.getAll().then(x=> res.send( x) )
        .catch(next);
    })
    .get('/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        workouts.get(id).then(x=> res.send( x ) )
        .catch(next);
    })

    /* .get('/met/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        workouts.getMET(id).then(x=> res.send( x ) )
        .catch(next);
    }) */

    .get('/types', (req, res, next) => {
        workouts.allTypes().then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/search', (req, res, next) => {
        workouts.search(req.query.q).then(x=> res.send( x ) )
        .catch(next);
    })
    .post('/', (req, res, next) => {
        workouts.add(
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
        workouts.update( req.params.id,
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
        workouts.remove(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;
    