var router = require('express').Router();
var db = require('../../../lib/database')();
var authMiddleware = require('../../auth/middlewares/auth');
router.use(authMiddleware.hasAuthadmin);

    
    router.get('/', authMiddleware.hasAuthadmin, (req, res) => {
        // res.render('admin/records/views/records');
        db.query('SELECT * from emergency where emergency_status ="saved"', (err, results, fields) => {
            if (err) console.log(err)
                return res.render('admin/emergency/views/emergency', { emergencies: results });
        });        
    });
    
    
    
    router.get('/:emergency_id/edit', (req, res) => {
        
        var queryString = `SELECT * FROM emergency WHERE emergency_id = "${req.params.emergency_id}"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/emergency/views/editemergencycat', { emergencies : results[0] });
        });
    });
    
    
    router.get('/:emergency_id/view', (req, res) => {
        
        var queryString = `SELECT * FROM emergency_info WHERE emergency_id = "${req.params.emergency_id}" and cat_status = "saved"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/emergency/views/viewcat', { emergencies : results });
            
        });
    });

        
    router.get('/:emergency_id/add', (req, res) => {
            res.render('admin/emergency/views/addcat', { emergencies : req.params.emergency_id});
    });

         
    router.get('/:emergency_id/delete', (req, res) => {
        const queryString = `UPDATE emergency SET        
        emergency_status = "deleted"
        WHERE emergency_id= ${req.params.emergency_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect('/admin/emergency');
        });
    });


    
    router.get('/:emergency_id/:emergency_type_id/edit', (req, res) => {
        
        var queryString = `SELECT * FROM emergency_info WHERE emergency_id = "${req.params.emergency_id}" and emergency_type_id = "${req.params.emergency_type_id}"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/emergency/views/editcat', { emergencies : results });
            
        });
    });


    router.get('/:emergency_id/:emergency_type_id/delete', (req, res) => {
        const queryString = `UPDATE emergency_info SET        
        cat_status = "deleted"
        WHERE emergency_type_id= ${req.params.emergency_type_id}`;
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect(`/admin/emergency/${req.params.emergency_id}/view`);
        });
    });
    
    
    router.get('/addemergencycat', authMiddleware.hasAuthadmin, (req, res) => {
        res.render('admin/emergency/views/addemergencycat');
    });


    
    router.get('/:emergency_id/deleted', (req, res) => {
        db.query(`SELECT * from emergency_info where emergency_id = ${req.params.emergency_id} cat_status ="deleted"`, (err, results, fields) => {
            if (err) console.log(err)
                return res.render('admin/emergency/views/deletedsubcat', { emergencies: results });
        });    
    });

    
    router.get('/deleted', (req, res) => {
        db.query('SELECT * from emergency where emergency_status ="deleted"', (err, results, fields) => {
            if (err) console.log(err)
                return res.render('admin/emergency/views/deletedcat', { emergencies: results });
        });    
    });


    router.get('/:emergency_id/deletepermanently', (req, res) => {
        const queryString = `DELETE FROM emergency_info
        WHERE emergency_id= ${req.params.emergency_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            const queryString = `DELETE FROM emergency
            WHERE emergency_id= ${req.params.emergency_id}`;

            db.query(queryString, (err, results, fields) => {   
                if (err) throw err;
                res.redirect('/admin/emergency');
                });
        });
    });

    router.get('/:emergency_id/restore', (req, res) => {
        const queryString = `UPDATE emergency SET        
        emergency_status = "saved"
        WHERE emergency_id= ${req.params.emergency_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect('/admin/emergency');
        });
    });


    ///////////////////////////////////////////////

    router.post('/addemergencycat', (req, res) => {
        var queryString = `INSERT INTO emergency(
            \`emergency_name\`,
            \`emergency_status\`) 

            VALUES(
                "${req.body.category}",
                "saved")`;

                db.query(queryString, (err, results, fields) => {        
                    if (err) throw err;

                    var categoryid= results;
                    console.log(categoryid)
                    

                    var queryString = `INSERT INTO emergency_info(
                        \`emergency_id\`,
                        \`cat_name\`,
                        \`cat_info\`,
                        \`cat_status\`) 
            
                        VALUES(
                            "${categoryid.insertId}",
                            "${req.body.subcategory}",
                            "${req.body.info}",
                            "saved")`;

                        
                        db.query(queryString, (err, results, fields) => {        
                            if (err) throw err;
                            res.redirect('/admin/emergency');
                        });
                });
            });
            
    
    router.post('/:emergency_id/edit', (req, res) => {
    
    console.log('NANDITO SIYA SA EDITPROFILE POST');
    const queryString = `UPDATE emergency SET        
    emergency_name = "${req.body.category}"
    where emergency_id= ${req.params.emergency_id};`;
    
    
    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;          
        return res.redirect('/admin/emergency'); 
        
    });
    });
    

    router.post('/:emergency_id/edit', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        const queryString = `UPDATE emergency SET        
        emergency_name = "${req.body.category}"
        where emergency_id= ${req.params.emergency_id};`;
        
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;          
            return res.redirect('/admin/emergency'); 
            
        });
        });
        

    router.post('/:emergency_id/add', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        var queryString = `INSERT INTO emergency_info(
            \`emergency_id\`, 
            \`cat_name\`,
            \`cat_info\`) 

            VALUES(
                "${req.params.emergency_id}",            
                "${req.body.subcategory}",
                "${req.body.info}")`;

            
            db.query(queryString, (err, results, fields) => {        
                if (err) throw err;          
                return res.redirect('/admin/emergency'); 
                
            });
        });
        

        

    router.post('/:emergency_id/:emergency_type_id/edit', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        const queryString = `UPDATE emergency_info SET        
        cat_name = "${req.body.categoryname}",
        cat_info = "${req.body.info}"
        where emergency_id= ${req.params.emergency_id} and emergency_type_id = ${req.params.emergency_type_id};`;
        
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;          
            return res.redirect(`/admin/emergency/${req.params.emergency_id}/view`); 
            
        });
    });
module.exports = router;