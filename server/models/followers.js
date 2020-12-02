/*
*/
const mysql = require('./mysql');
const user = require('./users');

const PREFIX = process.env.MYSQL_TABLE_PREFIX || '_FITNESS_';

async function getAll(){
    //throw { status: 501, message: "This is a fake error" }
    //await Promise.resolve()
    console.log("Called Get All")
    return await mysql.query(`SELECT * FROM ${PREFIX}Followers`);
}

async function get(id){
    const sql = `SELECT * FROM ${PREFIX}Followers WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, this follower does not exist" };
    return rows[0];
    
}

async function allTypes(){
    return await mysql.query(`SELECT * FROM ${PREFIX}Exercise_Types`);
}

async function add(Following_id, Follower_id, IsAccepted ){
    const sql = `INSERT INTO ${PREFIX}Followers (created_at, Following_id, Follower_id, IsAccepted ) VALUES ? ;`;
    const params = [[new Date(), Following_id, Follower_id, IsAccepted ]];
    return await mysql.query(sql, [params]);
}

async function update(id, Following_id, Follower_id, IsAccepted ){
    const sql = `UPDATE ${PREFIX}Followers SET ? WHERE id = ?;`;
    const params = {updated_at:new Date(), Following_id, Follower_id, IsAccepted };
    return await mysql.query(sql, [params, id]);
}

async function remove(id){
    const sql = `DELETE FROM ${PREFIX}Followers WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT * FROM ${PREFIX}Followers WHERE Follower_id LIKE ? OR Following_id LIKE ?; `, [`%${q}%`, , `%${q}%`]);

module.exports = { getAll, get, add, update, remove, allTypes, search}