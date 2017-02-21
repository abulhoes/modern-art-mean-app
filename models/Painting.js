var mongoose = require('mongoose');

var paintingSchema = new mongoose.Schema({
	title:{type:String},
	image:{type:String},
	year:{type:String},
	artists:[{type:mongoose.Schema.Types.ObjectId,ref:'Artist'}]
});

module.exports = mongoose.model('Painting', paintingSchema);