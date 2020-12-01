/*
*/
import { myFetch } from "./my-fetch.js";

export function getList() {
    return myFetch('users');
}

export function getUser(id) {
    return myFetch('users/' + id);
}

export function addUser(FirstName, LastName, DOB, Password, User_Type, Email){
    return myFetch('users/add', { FirstName: FirstName, LastName: LastName, DOB: DOB, Password:Password, User_Type: User_Type, Email: Email});
}

export function removeUser(id){
    return myFetch('users/delete/' + id);
}