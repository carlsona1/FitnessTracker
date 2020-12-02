/*
*/
import { myFetch } from "./my-fetch.js";

export function getList() {
    return myFetch('users');
}

export function getUser(id) {
    return myFetch('users/' + id);
}

export function register(FirstName, LastName, DOB, Password, Email ) {
    return myFetch('users/register', { FirstName: FirstName, LastName: LastName, DOB: DOB, Password: Password, Email: Email } );
}

export function login(email, password){
    return myFetch('users/login', {Password: password, Email: email } );
}

export function addUser(FirstName, LastName, DOB, Password, Email){
    return myFetch('users/add', { FirstName: FirstName, LastName: LastName, DOB: DOB, Password:Password, Email: Email});
}

export function removeUser(id){
    return myFetch('users/delete/' + id);
}