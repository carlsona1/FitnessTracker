/*
*/
import { myFetch } from "./my-fetch.js";

export function getList() {
    return myFetch('users');
}
