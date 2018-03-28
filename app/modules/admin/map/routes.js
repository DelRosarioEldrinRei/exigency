var router = require('express').Router();
var db = require('../../../lib/database')();
var authMiddleware = require('../../auth/middlewares/auth');
router.use(authMiddleware.hasAuthadmin);


// router.get('/', authMiddleware.hasAuthadmin, (req, res) => {
//     res.render('admin/hotlines/views/hotlines');
// });


router.get('/', authMiddleware.hasAuthadmin, (req, res) => {
    // res.render('admin/records/views/records');
    db.query('SELECT * from hospital_location where hospital_status = "saved"', (err, results, fields) => {
        if (err) console.log(err)
        return res.render('admin/map/views/map', { map: results });
    });
});



router.get('/:hospital_location_id/edit', (req, res) => {
    
    var queryString = `SELECT * FROM hospital_location WHERE hospital_location_id = "${req.params.hospital_location_id}"`;
    db.query(queryString, (err, results, fields) => {
        console.log(results)
        res.render('admin/map/views/edithospital', { map : results[0] });
    });
});


     
router.get('/:hospital_location_id/delete', (req, res) => {
    const queryString = `UPDATE hospital_location SET        
    hospital_status = "deleted"
    WHERE hospital_location_id= ${req.params.hospital_location_id}`;
    
    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;
        res.redirect('/admin/map');
    });
});


router.post('/:hospital_location_id/edit', (req, res) => {

console.log('NANDITO SIYA SA EDITPROFILE POST');
const queryString = `UPDATE hospital_location SET        
hospital_name = "${req.body.hospital_name}",
latitude = "${req.body.latitude}",
longitude = "${req.body.longitude}"
where  hospital_location_id= ${req.params.hospital_location_id};`;


db.query(queryString, (err, results, fields) => {        
    if (err) throw err;          
    return res.redirect('/admin/map'); 
    
});
});


router.get('/addhospital', authMiddleware.hasAuthadmin, (req, res) => {
    res.render('admin/map/views/addhospital');
});


router.post('/addhospital', (req, res) => {
    var queryString = `INSERT INTO hospital_location(
    \`longitude\`,
    \`latitude\`,
    \`hospital_name\`,
    \`hospital_status\`) 
    
    
    VALUES(
    "${req.body.longitude}",
    "${req.body.latitude}",
    "${req.body.hospital_name}",
    "saved")`;
   

    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;
        res.redirect('/admin/map');
    });
});

module.exports = router;