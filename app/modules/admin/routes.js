var router = require('express').Router();

var authMiddleware = require('../auth/middlewares/auth');

router.use(authMiddleware.hasAuthadmin);
router.use('/home', require('./home/routes'));

router.use('/hotlines', require('./hotlines/routes'));
router.use('/hotlines/addhotline', require('./hotlines/routes'));

router.use('/emergency', require('./emergency/routes'));
router.use('/emergency/deleted', require('./emergency/routes'));
router.use('/emergency/addemergencycat', require('./emergency/routes'));
router.use('/emergency/addemergencycat/category', require('./emergency/routes'));


router.use('/learn', require('./learn/routes'));
router.use('/learn/deleted', require('./emergency/routes'));
router.use('/learn/addlearncat', require('./learn/routes'));
router.use('/learn/addlearncat/category', require('./learn/routes'));

router.use('/map', require('./map/routes'));
router.use('/map/addhospital', require('./map/routes'));

router.use('/prepare', require('./prepare/routes'));
router.use('/prepare/deleted', require('./emergency/routes'));
router.use('/prepare/addpreparecat', require('./prepare/routes'));
router.use('/prepare/addpreparecat/category', require('./prepare/routes'));

exports.admin = router;