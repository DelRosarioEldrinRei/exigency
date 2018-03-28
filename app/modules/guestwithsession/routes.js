var router = require('express').Router();
var authMiddleware = require('../auth/middlewares/auth');

router.use(authMiddleware.hasAuth);


router.use('/home', require('./home/routes'));
router.use('/about', require('./about/routes'));
exports.guestwithsession = router;