var router = require('express').Router();
var db = require('../../../lib/database')();
var authMiddleware = require('../../auth/middlewares/auth');
router.use(authMiddleware.hasAuthadmin);

    
    router.get('/', authMiddleware.hasAuthadmin, (req, res) => {
        // res.render('admin/records/views/records');
        db.query('SELECT * from learn where learn_status ="saved"', (err, results, fields) => {
            if (err) console.log(err)
                return res.render('admin/learn/views/learn', { learns: results });
        });        
    });
    
    
    
    router.get('/:learn_id/edit', (req, res) => {
        
        var queryString = `SELECT * FROM learn WHERE learn_id = "${req.params.learn_id}"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/learn/views/editlearncat', { learns : results[0] });
        });
    });
    
    
    router.get('/:learn_id/view', (req, res) => {
        
        var queryString = `SELECT * FROM learn_info WHERE learn_id = "${req.params.learn_id}" and cat_status = "saved"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/learn/views/viewcat', { learns : results });
            
        });
    });

        
    router.get('/:learn_id/add', (req, res) => {
            res.render('admin/learn/views/addcat', { learns : req.params.learn_id});
    });

         
    router.get('/:learn_id/delete', (req, res) => {
        const queryString = `UPDATE learn SET        
        learn_status = "deleted"
        WHERE learn_id= ${req.params.learn_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect('/admin/learn');
        });
    });


    
    router.get('/:learn_id/:learn_type_id/edit', (req, res) => {
        
        var queryString = `SELECT * FROM learn_info WHERE learn_id = "${req.params.learn_id}" and learn_type_id = "${req.params.learn_type_id}"`;
        db.query(queryString, (err, results, fields) => {
            console.log(results)
            res.render('admin/learn/views/editcat', { learns : results });
            
        });
    });


    router.get('/:learn_id/:learn_type_id/delete', (req, res) => {
        const queryString = `UPDATE learn_info SET        
        cat_status = "deleted"
        WHERE learn_type_id= ${req.params.learn_type_id}`;
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect(`/admin/learn/${req.params.learn_id}/view`);
        });
    });
    
    
    router.get('/addlearncat', authMiddleware.hasAuthadmin, (req, res) => {
        res.render('admin/learn/views/addlearncat');
    });

    

    router.get('/deleted', (req, res) => {
        db.query('SELECT * from learn where learn_status ="deleted"', (err, results, fields) => {
            if (err) console.log(err)
                return res.render('admin/learn/views/deletedcat', { learns: results });
        });    
    });


    router.get('/:learn_id/deletepermanently', (req, res) => {
        const queryString = `DELETE FROM learn_info
        WHERE learn_id= ${req.params.learn_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            const queryString = `DELETE FROM learn
            WHERE learn_id= ${req.params.learn_id}`;

            db.query(queryString, (err, results, fields) => {   
                if (err) throw err;
                res.redirect('/admin/learn');
                });
        });
    });

    router.get('/:learn_id/restore', (req, res) => {
        const queryString = `UPDATE learn SET        
        learn_status = "saved"
        WHERE learn_id= ${req.params.learn_id}`;
    
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;
            res.redirect('/admin/learn');
        });
    });




    ///////////////////////////////////////////////

    router.post('/addlearncat', (req, res) => {
        var queryString = `INSERT INTO learn(
            \`learn_name\`,
            \`learn_status\`) 

            VALUES(
                "${req.body.category}",
                "saved")`;

                db.query(queryString, (err, results, fields) => {        
                    if (err) throw err;

                    var categoryid= results;
                    console.log(categoryid)
                    

                    var queryString = `INSERT INTO learn_info(
                        \`learn_id\`,
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
                            res.redirect('/admin/learn');
                        });
                });
            });
            
    
    router.post('/:learn_id/edit', (req, res) => {
    
    console.log('NANDITO SIYA SA EDITPROFILE POST');
    const queryString = `UPDATE learn SET        
    learn_name = "${req.body.category}"
    where learn_id= ${req.params.learn_id};`;
    
    
    db.query(queryString, (err, results, fields) => {        
        if (err) throw err;          
        return res.redirect('/admin/learn'); 
        
    });
    });
    

    router.post('/:learn_id/edit', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        const queryString = `UPDATE learn SET        
        learn_name = "${req.body.category}"
        where learn_id= ${req.params.learn_id};`;
        
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;          
            return res.redirect('/admin/learn'); 
            
        });
        });
        

    router.post('/:learn_id/add', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        var queryString = `INSERT INTO learn_info(
            \`learn_id\`, 
            \`cat_name\`,
            \`cat_info\`) 

            VALUES(
                "${req.params.learn_id}",            
                "${req.body.subcategory}",
                "${req.body.info}")`;

            
            db.query(queryString, (err, results, fields) => {        
                if (err) throw err;          
                return res.redirect('/admin/learn'); 
                
            });
        });
        

        

    router.post('/:learn_id/:learn_type_id/edit', (req, res) => {
        
        console.log('NANDITO SIYA SA EDITPROFILE POST');
        const queryString = `UPDATE learn_info SET        
        cat_name = "${req.body.categoryname}",
        cat_info = "${req.body.info}"
        where learn_id= ${req.params.learn_id} and learn_type_id = ${req.params.learn_type_id};`;
        
        
        db.query(queryString, (err, results, fields) => {        
            if (err) throw err;          
            return res.redirect(`/admin/learn/${req.params.learn_id}/view`); 
            
        });
    });
module.exports = router;