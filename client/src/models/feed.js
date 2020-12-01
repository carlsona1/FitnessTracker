/* Comment would go here
    Feed Model. The raw data for the feed display
    Currently mocked at the client side.
*/

import { myFetch } from "./my-fetch";
import session from "./session";

export const getPosts = ()=> myFetch(`workouts/byUser/5`);

export function react(workout_id){
    //console.log(session.user)
    return myFetch('reactions', { Workout_id: workout_id, Owner_id: 5 })
}

export function comment(workout_id, text){
    return myFetch('comments', { Workout_id: workout_id, Owner_id: 5, Text: text })
}

export function getWorkoutsByUser(Owner_id) {
    return myFetch('workouts/owner/' + Owner_id);
}

export function getVisibleWorkouts(Privacy_Setting) {
    return myFetch('workouts/public/' + Privacy_Setting);
}

export function addWorkout( Owner_id, Privacy_Setting, Time, Exercise_Type, Note, Distance, Other_Info) {
    return myFetch('workouts/add', { Owner_id: Owner_id, Privacy_Setting: Privacy_Setting, Time: Time, Exercise_Type: Exercise_Type, Note: Note, Distance: Distance, Other_Info: Other_Info});
}

export function deleteWorkout(id){
    return myFetch('workouts/delete/' + id);
}