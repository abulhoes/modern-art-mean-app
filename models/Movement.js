var mongoose = require('mongoose');

var movementSchema = new mongoose.Schema({
	movement:{type:String},
	image:{type:String},
	artists:[{type:mongoose.Schema.Types.ObjectId,ref:'Artist'}]
});

module.exports = mongoose.model('Movement', movementSchema);