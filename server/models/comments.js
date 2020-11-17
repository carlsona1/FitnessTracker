/*
*/
const bcrypt = require('bcrypt');
const mysql = require('./mysql');
const user = require('./users');

const PREFIX = process.env.MYSQL_TABLE_PREFIX || '_FITNESS_';

async function getAll(){
    //throw { status: 501, message: "This is a fake error" }
    //await Promise.resolve()
    //console.log("Called Get All")
    return await mysql.query(`SELECT * FROM ${PREFIX}Comments`);
}

async function get(id){
    const sql = `SELECT * FROM ${PREFIX}Comments WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, this comment does not exist" };
    return rows[0];
    
}

async function allTypes(){
    return await mysql.query(`SELECT * FROM ${PREFIX}Exercise_Types`);
}

async function add(Text, Workout_id, Owner_id, media_url, media_type){
    const sql = `INSERT INTO ${PREFIX}Comments (created_at, Text, Workout_id, Owner_id, media_url, media_type) VALUES ? ;`;
    const params = [[new Date(), Text, Workout_id, Owner_id, media_url, media_type]];
    return await mysql.query(sql, [params]);
}

async function update(id, Text, Workout_id, Owner_id, media_url, media_type){
    const sql = `UPDATE ${PREFIX}Comments SET ? WHERE id = ?;`;
    const params = {updated_at: new Date(), Text, Workout_id, Owner_id, media_url, media_type };
    return await mysql.query(sql, [params, id]);
}

async function remove(id){
    const sql = `DELETE FROM ${PREFIX}Comments WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT * FROM ${PREFIX}Comments WHERE Text LIKE ? OR Owner_id LIKE ? OR Workout_id LIKE ?; `, [`%${q}%`, `%${q}%`, , `%${q}%`]);

module.exports = { getAll, get, add, update, remove, allTypes, search}