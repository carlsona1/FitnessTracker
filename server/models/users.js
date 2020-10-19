/*
*/

const data = [{name: 'Alex', age: 29}, {name: 'Chris', age: 34}];

function getAll(){
    return data;
}

function add(name, age){
    data.push({name, age});
}

module.exports = { getAll, add, search: q=> data.filter(x=> x.name == q) }