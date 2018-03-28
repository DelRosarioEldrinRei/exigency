var router = require('express').Router();
var db = require('../../../lib/database')();
var authMiddleware = require('../../auth/middlewares/auth');
router.use(authMiddleware.hasAuthadmin);

    
    router.get('/', authMiddleware.hasAuthadmin, (req, res) => {
        // res.render('admin/records/views/records');
        db.query('SELECT * from prepare where prepare_status ="saved"', (err, results, fields) => {
            if (err) console.log(err)
                return res.render('admin/prepare/views/prepare', { prepares: results });
        });        
    });
    
    
    
    router.get('/:prepare_id/edit', (req, res) => {
        
        var queryString = `SELECT * FROM prepare WHERE prepare_id = "${req.params.prepare_id}"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/prepare/views/editpreparecat', { prepares : results[0] });
        });
    });
    
    
    router.get('/:prepare_id/view', (req, res) => {
        
        var queryString = `SELECT * FROM prepare_info WHERE prepare_id = "${req.params.prepare_id}" and cat_status = "saved"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/prepare/views/viewcat', { prepares : results });
            
        });
    });

        
    router.get('/:prepare_id/add', (req, res) => {
            res.render('admin/prepare/views/addcat', { prepares : req.params.prepare_id});
    });

         
    router.get('/:prepare_id/delete', (req, res) => {
        const queryString = `UPDATE prepare SET        
        prepare_status = "deleted"
        WHERE prepare_id= ${req.params.prepare_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect('/admin/prepare');
        });
    });


    
    router.get('/:prepare_id/:prepare_type_id/edit', (req, res) => {
        
        var queryString = `SELECT * FROM prepare_info WHERE prepare_id = "${req.params.prepare_id}" and prepare_type_id = "${req.params.prepare_type_id}"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/prepare/views/editcat', { prepares : results });
            
        });
    });


    router.get('/:prepare_id/:prepare_type_id/delete', (req, res) => {
        const queryString = `UPDATE prepare_info SET        
        cat_status = "deleted"
        WHERE prepare_type_id= ${req.params.prepare_type_id}`;
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect(`/admin/prepare/${req.params.prepare_id}/view`);
        });
    });
    
    
    router.get('/addpreparecat', authMiddleware.hasAuthadmin, (req, res) => {
        res.render('admin/prepare/views/addpreparecat');
    });

    
    router.get('/deleted', (req, res) => {
        db.query('SELECT * from prepare where prepare_status ="deleted"', (err, results, fields) => {
            if (err) console.log(err)
                return res.render('admin/prepare/views/deletedcat', { prepares: results });
        });    
    });

    router.get('/:prepare_id/deletepermanently', (req, res) => {
        const queryString = `DELETE FROM prepare_info
        WHERE prepare_id= ${req.params.prepare_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            const queryString = `DELETE FROM prepare
            WHERE prepare_id= ${req.params.prepare_id}`;

            db.query(queryString, (err, results, fields) => {   
                if (err) throw err;
                res.redirect('/admin/prepare');
                });
        });
    });

    router.get('/:prepare_id/restore', (req, res) => {
        const queryString = `UPDATE prepare SET        
        prepare_status = "saved"
        WHERE prepare_id= ${req.params.prepare_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect('/admin/prepare');
        });
    });






    ///////////////////////////////////////////////

    router.post('/addpreparecat', (req, res) => {
        var queryString = `INSERT INTO prepare(
            \`prepare_name\`,
            \`prepare_status\`) 

            VALUES(
                "${req.body.category}",
                "saved")`;

                db.query(queryString, (err, results, fields) => {        
                    if (err) throw err;

                    var categoryid= results;
                    console.log(categoryid)
                    

                    var queryString = `INSERT INTO prepare_info(
                        \`prepare_id\`,
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
                            res.redirect('/admin/prepare');
                        });
                });
            });
            
    
    router.post('/:prepare_id/edit', (req, res) => {
    
    console.log('NANDITO SIYA SA EDITPROFILE POST');
    const queryString = `UPDATE prepare SET        
    prepare_name = "${req.body.category}"
    where prepare_id= ${req.params.prepare_id};`;
    
    
    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;          
        return res.redirect('/admin/prepare'); 
        
    });
    });
    

    router.post('/:prepare_id/edit', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        const queryString = `UPDATE prepare SET        
        prepare_name = "${req.body.category}"
        where prepare_id= ${req.params.prepare_id};`;
        
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;          
            return res.redirect('/admin/prepare'); 
            
        });
        });
        

    router.post('/:prepare_id/add', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        var queryString = `INSERT INTO prepare_info(
            \`prepare_id\`, 
            \`cat_name\`,
            \`cat_info\`) 

            VALUES(
                "${req.params.prepare_id}",            
                "${req.body.subcategory}",
                "${req.body.info}")`;

            
            db.query(queryString, (err, results, fields) => {        
                if (err) throw err;          
                return res.redirect('/admin/prepare'); 
                
            });
        });
        

        

    router.post('/:prepare_id/:prepare_type_id/edit', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        const queryString = `UPDATE prepare_info SET        
        cat_name = "${req.body.categoryname}",
        cat_info = "${req.body.info}"
        where prepare_id= ${req.params.prepare_id} and prepare_type_id = ${req.params.prepare_type_id};`;
        
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;          
            return res.redirect(`/admin/prepare/${req.params.prepare_id}/view`); 
            
        });
    });
module.exports = router;