const express = require('express');
const exercise = require('../models/exercise_types');

const router = express.Router();

router
    .get('/', (req, res, next) => {
        exercise.getAllExercises().then(x=> res.send( x.map(ex=> ({ ...ex}) ) ) )
        .catch(next);
    })
    .post('/add', (req, res, next) => {
        exercise.addExercise(
            req.body.Name,
            req.body.Type, 
            req.body.Muscle_group, 
            req.body.Relative_Difficulty,  
        ).then(newExercise => {
            res.send( newExercise );
        }).catch(next)
    })
   .put('/update/:id', (req, res, next) => {
        exercise.updateExercise( req.params.id,
            req.body.Name,
            req.body.Type, 
            req.body.Muscle_group, 
            req.body.Relative_Difficulty, 
        ).then(upExercise => {
            res.send( upExercise );
        }).catch(next)
    })
    .delete('/delete/:id', (req, res, next) => {
        exercise.removeExercise(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;