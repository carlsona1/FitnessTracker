
/*
*/
import { myFetch } from "./my-fetch.js";


export function getWorkouts() {
    return myFetch('workouts');
}

export function getUserWorkouts(Owner_id) {
    return myFetch('workouts/owner/' + Owner_id);
}

export function addWorkout(privacy_setting, starttime, endtime, exercise_type, title, note, distance, elevation, sets, reps_per_set, weight, url ){
    return myFetch('workouts/add', { Owner_id: 5, Privacy_Setting: privacy_setting, Start_Time: starttime, End_Time: endtime, Exercise_Type: exercise_type, Title: title, Note: note, Distance: distance, Elevation: elevation, Sets: sets, Reps_Per_Set: reps_per_set, Weight: weight, URL: url })
}

export function updateWorkout(id, privacy_setting, starttime, endtime, exercise_type, title, note, distance, elevation, sets, reps_per_set, weight, url ) {
    return myFetch('workouts/update/' + id, {Owner_id: 5, Privacy_Setting: privacy_setting, Start_Time: starttime, End_Time: endtime, Exercise_Type: exercise_type, Title: title, Note: note, Distance: distance, Elevation: elevation, Sets: sets, Reps_Per_Set: reps_per_set, Weight: weight, URL: url });
}

export function deleteWorkout(id){
    return myFetch('workouts/delete/' + id);
}

export function search(Title){
    return myFetch('workouts/search?q=' + title);
}