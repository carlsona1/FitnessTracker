/*
*/
import { myFetch } from "./my-fetch.js";

export function getList() {
    return myFetch('users');
}

//export const list = [{"id":4,"created_at":"2020-11-16T20:40:03.000Z","update_at":"2020-11-17T00:33:12.000Z","FirstName":"Ron","LastName":"Swanson","DOB":"1963-07-04T04:00:00.000Z","User_Type":6,"height":70,"weight":230},{"id":5,"created_at":"2020-11-16T20:42:11.000Z","update_at":"2020-11-17T00:32:54.000Z","FirstName":"Alex","LastName":"Carlson","DOB":"1991-03-21T05:00:00.000Z","User_Type":6,"height":75,"weight":200},{"id":6,"created_at":"2020-11-17T06:48:57.000Z","update_at":"2020-11-17T06:49:31.000Z","FirstName":"Bob","LastName":"Barker","DOB":"1958-05-29T04:00:00.000Z","User_Type":6,"height":0,"weight":0}]