/*
*/
const bcrypt = require('bcrypt');
const mysql = require('./mysql');
const user = require('./users');

const PREFIX = process.env.MYSQL_TABLE_PREFIX || '_FITNESS_';

const ExTypes = { RUN:1, JOG:2, WALK: 3, BIKE:4, SWIM: 5, HIKE:6 };

async function getAll(){
    //throw { status: 501, message: "This is a fake error" }
    //await Promise.resolve()
    console.log("Called Get All")
    return await mysql.query(`SELECT * FROM ${PREFIX}Workouts`);
}

async function get(id){
    const sql = `SELECT * FROM ${PREFIX}Workouts WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, this workout does not exist" };
    return rows[0];
    
}

/* async function getMET(id){
    const sql = `SELECT Exercise_Type FROM ${PREFIX}Workouts WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    const query = `SELECT Relative_Difficulty FROM ${PREFIX}Exercise_Types WHERE id=?`;
    const typeRow = await mysql.query(query, [rows[0].id]);
    if(!rows.length) throw { status: 404, message: "Sorry, this workout does not exist" };
    return typeRow[0];
} */

async function allTypes(){
    return await mysql.query(`SELECT * FROM ${PREFIX}Exercise_Types`);
}

async function add(Owner_id, Privacy_Setting, Start_Time, End_Time, Exercise_Type, Note, Distance, Sets, Reps_Per_Set, Weight, calories){
    //const userAtr = await user.getAtr(Owner_id);
    //const MET = await this.getMET;
   //const calories = (End_Time - Start_Time) * MET * 3.5 * userAtr.weight / (200*60) ;
    const sql = `INSERT INTO ${PREFIX}Workouts (created_at, Owner_id, Privacy_Setting, Start_Time, End_Time, Exercise_Type, Note, Distance, Sets, Reps_Per_Set, Weight, calories) VALUES ? ;`;
    const params = [[new Date(), Owner_id, Privacy_Setting, new Date(Start_Time), new Date(End_Time), Exercise_Type, Note, Distance, Sets, Reps_Per_Set, Weight, calories]];
    return await mysql.query(sql, [params]);
}

async function update(id, Privacy_Setting, Start_Time, End_Time, Exercise_Type, Note, Distance, Sets, Reps_Per_Set, Weight, calories){
    const sql = `UPDATE ${PREFIX}Workouts SET ? WHERE id = ?;`;
    const params = { Privacy_Setting,Start_Time: new Date(Start_Time),End_Time: new Date(End_Time), Exercise_Type, Note, Distance, Sets, Reps_Per_Set, Weight, calories };
    return await mysql.query(sql, [params, id]);
}

async function remove(id){
    const sql = `DELETE FROM ${PREFIX}Workouts WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT * FROM ${PREFIX}Workouts WHERE MONTH(End_Time) AND DAY(End_Time) LIKE ? OR id LIKE ? OR Exercise_Type LIKE ?; `, [`%${q}%`, `%${q}%`, , `%${q}%`]);

module.exports = { getAll, get, add, update, remove, allTypes, search}