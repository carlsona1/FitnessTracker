const mysql = require('./mysql');
const cm = require('./ContactMethods');
const comments = require('./comments');

const PREFIX = process.env.MYSQL_TABLE_PREFIX || '_FITNESS_';
const MediaTypes = { GIF: 'image/gif', JPG: 'image/jpeg', PNG: 'image/png' };
const Privacy_Levels = { HIDDEN: 0, ONLY_ME: 1, ONLY_FRIENDS: 2, PUBLIC: 4 };
const ExTypes = { RUN:1, JOG:2, WALK: 3, BIKE:4, SWIM: 5, HIKE:6 };

async function getAll(){
    console.log("Called Get All")
    const sql = `
        SELECT 
            W.*, FirstName, LastName,
            (SELECT Value FROM ${PREFIX}ContactMethods Where User_id = U.id AND Type='${cm.Types.EMAIL}' AND IsPrimary = 1) as PrimaryEmail,
            (SELECT COUNT(*) FROM ${PREFIX}Reactions WHERE Workout_id = W.id) as Reactions
        FROM ${PREFIX}Workouts W Join ${PREFIX}Users U ON W.Owner_id = U.id`
        console.log(sql);
    return await mysql.query(sql);
}

async function getByUser(user_id){
    console.log("Called Get All")
    const sql = `
        SELECT 
            W.*, FirstName, LastName,
            (SELECT Value FROM ${PREFIX}ContactMethods Where User_id = U.id AND Type='${cm.Types.EMAIL}' AND IsPrimary = 1) as PrimaryEmail,
            (SELECT COUNT(*) FROM ${PREFIX}Reactions WHERE Workout_id = W.id) as Reactions
        FROM ${PREFIX}Workouts W Join ${PREFIX}Users U ON W.Owner_id = U.id
        WHERE W.Owner_id = ?`
        console.log(sql);

        const workouts = await mysql.query(sql, [user_id]);

        for (const p of workouts) {
            p.Comments = await comments.getForWorkout(p.id); 
        }

    return workouts;
}

async function getFeed(user_id){
    console.log("Called Get All")
    const sql = `
        SELECT 
            W.*, FirstName, LastName,
            (SELECT Value FROM ${PREFIX}ContactMethods Where User_id = U.id AND Type='${cm.Types.EMAIL}' AND IsPrimary = 1) as PrimaryEmail,
            (SELECT COUNT(*) FROM ${PREFIX}Reactions WHERE Workout_id = W.id) as Reactions
        FROM ${PREFIX}Workouts W Join ${PREFIX}Users U ON W.Owner_id = U.id`
        console.log(sql);
    return await mysql.query(sql);
}

async function getWorkout(id){
    const sql = `SELECT 
        *
    FROM ${PREFIX}Workouts WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, there is no such workout" };
    return rows[0];
}

async function getTypes(){
    return await mysql.query(`SELECT id, Name FROM ${PREFIX}Types WHERE Type_id = 3`);
}

async function add(Owner_id, Privacy_Setting, Start_Time, End_Time, Exercise_Type, Title, Note, Distance, Elevation, Sets, Reps_Per_Set, Weight, URL){
    const sql = `INSERT INTO ${PREFIX}Workouts (created_at, Owner_id, Privacy_Setting, Start_Time, End_Time, Exercise_Type, Title, Note, Distance, Elevation, Sets, Reps_Per_Set, Weight, URL) VALUES ? ;`;
    const params = [[new Date(), Owner_id, Privacy_Setting, new Date(Start_Time), new Date(End_Time), Exercise_Type, Title, Note, Distance, Elevation, Sets, Reps_Per_Set, Weight, URL]];
    return await mysql.query(sql, [params]);
}

async function update(id, Privacy_Setting, Start_Time, End_Time, Exercise_Type,Title,  Note, Distance,Elevation, Sets, Reps_Per_Set, Weight, URL){
    const sql = `UPDATE ${PREFIX}Workouts SET ? WHERE id = ?;`;
    const params = {updated_at:new Date(), Privacy_Setting,Start_Time: new Date(Start_Time),End_Time: new Date(End_Time), Exercise_Type,Title, Note, Distance,Elevation, Sets, Reps_Per_Set, Weight, URL};
    return await mysql.query(sql, [params, id]);
}

async function remove(id){
    const sql = `DELETE FROM ${PREFIX}Workouts WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT id, URL,Title, Note, Media_Type FROM ${PREFIX}Workouts WHERE Title LIKE ? ; `, [`%${q}%`]);

module.exports = { getAll, getWorkout, add, update, remove, getTypes, search, MediaTypes, Privacy_Levels, ExTypes, getByUser, getFeed}