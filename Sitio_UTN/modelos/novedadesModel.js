var pool = require('./base_de_datos');

async function getNovedades() {
    
        var query = 'select * from novedades';
        var rows = await pool.query(query);
        return rows;
    
}

module.exports = { getNovedades }