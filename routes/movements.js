var express = require('express');
var router = express.Router();
var mongoose = require('mongoose');
var Movement = require('../models/Movement.js');
var Artist = require('../models/Artist.js');
var Painting = require('../models/Painting.js');

/* GET movements listing. */
router.get('/', function(req, res, next) {
	Movement.find()
	.exec(function(err, movement) {
		if(err) return next(err);
		res.json(movement);
	});
});

/* GET movements/{id} listing. */
router.get('/:id', function(req, res, next) {
	Movement.findById(req.params.id)
	.populate({
    path: 'artists',
    populate: { path: 'paintings' }
  	})
	.exec(function(error, moveArtPaint) {
   	 res.json(moveArtPaint);
  });
});




module.exports = router;
