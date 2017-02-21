var mongoose = require('mongoose');

var artistSchema = new mongoose.Schema({
	artist_fname:{type:String},
	artist_lname:{type:String},
	movements:[{type:mongoose.Schema.Types.ObjectId,ref:'Movement'}],
	paintings:[{type:mongoose.Schema.Types.ObjectId,ref:'Painting'}]
});

module.exports = mongoose.model('Artist', artistSchema);