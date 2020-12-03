const express = require('express');
const users = require('../models/users');
const workouts = require('../models/workouts');
const comments = require('../models/comments');
const reactions = require('../models/reactions');

const router = express.Router();

router
    .get('/', (req, res, next) => {
        workouts.getAll().then(x=> res.send( x ) ) 
        .catch(next);
    })
    .get('/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        workouts.get(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/byUser/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        workouts.getByUser(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/getworkout/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        workouts.getWorkout(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/:id/comments', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        comments.getForWorkout(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/:id/reactions', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        reactions.getForWorkout(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/types', (req, res, next) => {
        workouts.getTypes().then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/search', (req, res, next) => {
        workouts.search(req.query.q).then(x=> res.send( x ) )
        .catch(next);
    })
    .post('/add', (req, res, next) => {
        workouts.add(
            req.body.Owner_id,
            req.body.Privacy_Setting,
            req.body.Start_Time,
            req.body.End_Time,
            req.body.Exercise_Type,
            req.body.Title,
            req.body.Note,
            req.body.Distance,
            req.body.Elevation,
            req.body.Sets,
            req.body.Reps_Per_Set,
            req.body.Weight,
            req.body.URL
        ).then(newUser => {
            res.send( newUser );
        }).catch(next)
    })
   .put('update/:id', (req, res, next) => {
        workouts.update( req.params.id,
            req.body.Owner_id,
            req.body.Privacy_Setting,
            req.body.Start_Time,
            req.body.End_Time,
            req.body.Exercise_Type,
            req.body.Title,
            req.body.Note,
            req.body.Distance,
            req.body.Elevation,
            req.body.Sets,
            req.body.Reps_Per_Set,
            req.body.Weight,
            req.body.URL
        ).then(newUser => {
            res.send( newUser );
        }).catch(next)
    })
    .delete('delete/:id', (req, res, next) => {
        workouts.remove(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;