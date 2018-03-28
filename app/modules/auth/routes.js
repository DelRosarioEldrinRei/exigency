var express = require('express');
var loginRouter = express.Router();
var loginAdminRouter = express.Router();
var logoutRouter = express.Router();
var loginGuestRouter = express.Router();//dontgetconfused,this is the signup router :)
var authMiddleware = require('./middlewares/auth');
var db = require('../../lib/database')();

loginRouter.route('/')
    .get(authMiddleware.noAuthed, (req, res) => {
        res.render('auth/views/login', req.query);
    })

loginAdminRouter.route('/')
    .get(authMiddleware.noAuthed, (req, res) => {
        res.render('auth/views/login', req.query);
    })
    .post((req, res) => {
        console.log('POST LOGIN');
        
        db.query(`SELECT * FROM user WHERE varchar_username="${req.body.user_username}"`, (err, results, fields) => {
            if (err) throw err;
            if (results.length === 0) return res.redirect('/login?incorrect');

            var user = results[0];
            
            if (user.varchar_password !== req.body.user_password) return res.redirect('/login?incorrect');
            
            if(user.char_usertype == "Admin"){
                delete user.varchar_password;
                // req.session.admin = req.body.user_username;
                req.session.admin = user;
                console.log(req.session);
                return res.redirect('/admin/emergency');
                
            }
        });
    })


logoutRouter.get('/', (req, res) => {
    req.session.destroy(err => {
        if (err) throw err;
        res.redirect('/login');
    });
});
exports.loginadmin= loginAdminRouter;
exports.login = loginRouter;
exports.logout = logoutRouter;
