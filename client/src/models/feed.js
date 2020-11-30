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