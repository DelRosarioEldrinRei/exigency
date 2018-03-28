var router = require('express').Router();
var db = require('../../../lib/database')();
var authMiddleware = require('../../auth/middlewares/auth');
router.use(authMiddleware.hasAuthadmin);


// router.get('/', authMiddleware.hasAuthadmin, (req, res) => {
//     res.render('admin/hotlines/views/hotlines');
// });


router.get('/', authMiddleware.hasAuthadmin, (req, res) => {
    // res.render('admin/records/views/records');
    db.query('SELECT * from hotlines where line_status = "saved"', (err, results, fields) => {
        if (err) console.log(err)
        return res.render('admin/hotlines/views/hotlines', { hotlines: results });
    });
});



router.get('/:line_id/edit', (req, res) => {
    
    var queryString = `SELECT * FROM hotlines WHERE line_id = "${req.params.line_id}"`;
    db.query(queryString, (err, results, fields) => {
        console.log(results)
        res.render('admin/hotlines/views/edithotlines', { hotlines : results[0] });
    });
});


router.get('/deleted', (req, res) => {
    db.query('SELECT * from hotlines where line_status ="deleted"', (err, results, fields) => {
        if (err) console.log(err)
            return res.render('admin/hotlines/views/deletedcat', { emergencies: results });
    });    
});





router.get('/:line_id/deletepermanently', (req, res) => {
    const queryString = `DELETE FROM hotlines
    WHERE line_id= ${req.params.line_id}`;

    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;
        const queryString = `DELETE FROM hotlines
        WHERE line_id= ${req.params.line_id}`;

        db.query(queryString, (err, results, fields) => {   
            if (err) throw err;
            res.redirect('/admin/hotlines');
            });
    });
});

router.get('/:line_id/restore', (req, res) => {
    const queryString = `UPDATE hotlines SET        
    line_status = "saved"
    WHERE line_id= ${req.params.line_id}`;

    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;
        res.redirect('/admin/hotlines');
    });
});




     
router.get('/:line_id/delete', (req, res) => {
    
    const queryString = `UPDATE hotlines SET        
    line_status = "deleted"
    WHERE line_id= ${req.params.line_id}`;
    
    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;
        res.redirect('/admin/hotlines');
    });
});



router.post('/:line_id/edit', (req, res) => {

console.log('NANDITO SIYA SA EDITPROFILE POST');
const queryString = `UPDATE hotlines SET        
line_number = "${req.body.line_number}",
line_owner = "${req.body.line_owner}"
where  line_id= ${req.params.line_id};`;


db.query(queryString, (err, results, fields) => {        
    if (err) throw err;          
    return res.redirect('/admin/hotlines'); 
    
});
});


router.get('/addhotline', authMiddleware.hasAuthadmin, (req, res) => {
    res.render('admin/hotlines/views/addhotline');
});


router.post('/addhotline', (req, res) => {
    var queryString = `INSERT INTO hotlines(
    \`line_number\`,
    \`line_owner\`,
    \`line_status\`)
    
    
    VALUES(
    "${req.body.line_number}",
    "${req.body.line_owner}",
    "saved")`;
   

    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;
        res.redirect('/admin/hotlines');
    });
});

module.exports = router;