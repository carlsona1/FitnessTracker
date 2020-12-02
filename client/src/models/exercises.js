
import { myFetch } from "./my-fetch";

export function getExercises() {
    return myFetch('exercises');
}

export function addExercise(Name, Type, Muscle_group, Relative_Difficulty){
    return myFetch('exercises/add', {Name: Name, Type: Type, Muscle_group: Muscle_group, Relative_Difficulty: Relative_Difficulty});
}

export function deleteExercise(id){
    return myFetch('exercises/delete/' + id);
}

