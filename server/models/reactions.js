/*
*/
const bcrypt = require('bcrypt');
const mysql = require('./mysql');
const user = require('./users');

const PREFIX = process.env.MYSQL_TABLE_PREFIX || '_FITNESS_';


async function getAll(){
    //throw { status: 501, message: "This is a fake error" }
    //await Promise.resolve()
    console.log("Called Get All")
    return await mysql.query(`SELECT * FROM ${PREFIX}Reactions`);
}

async function get(id){
    const sql = `SELECT * FROM ${PREFIX}Reactions WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, this workout does not exist" };
    return rows[0];
    
}


async function allTypes(){
    return await mysql.query(`SELECT * FROM ${PREFIX}Exercise_Types`);
}

async function add(Emoji, Workout_id, Owner_id){
    const sql = `INSERT INTO ${PREFIX}Reactions (created_at, Owner_id, Privacy_Setting, Start_Time, End_Time, Exercise_Type, Note, Distance, Sets, Reps_Per_Set, Weight, calories) VALUES ? ;`;
    const params = [[new Date(), Emoji, Workout_id, Owner_id]];
    return await mysql.query(sql, [params]);
}

async function update(id, Privacy_Setting, Start_Time, End_Time, Exercise_Type, Note, Distance, Sets, Reps_Per_Set, Weight, calories){
    const sql = `UPDATE ${PREFIX}Reactions SET ? WHERE id = ?;`;
    const params = {updated_at: new Date(), Emoji, Workout_id, Owner_id };
    return await mysql.query(sql, [params, id]);
}

async function remove(id){
    const sql = `DELETE FROM ${PREFIX}Reactions WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT * FROM ${PREFIX}Reactions WHERE Emoji LIKE ? OR Owner_id LIKE ? OR Workout_id LIKE ?; `, [`%${q}%`, `%${q}%`, , `%${q}%`]);

module.exports = { getAll, get, add, update, remove, allTypes, search}