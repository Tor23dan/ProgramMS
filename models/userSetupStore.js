const mongoose = require('mongoose')
const Schema = mongoose.Schema
var uniqueValidator = require('mongoose-unique-validator')
const bcrypt = require('bcrypt')

const AccountDataSchema = Schema({
    username: { // This passes in configuration objects and put in validation rules
    type: String,
    required: [true, 'Please Provide valid Username'],
    unique: true // This make mongoose to check that the record should be unique before saving to the database and can do the exact same thing to username. 
    },
    password: {
    type: String,
    required: [true, 'Please Provide valid Password'],
    },
    accounttype: {
    type: String,
    required: [true, 'Please Provide valid Account-Type'],
    },
});

AccountDataSchema.plugin(uniqueValidator)

AccountDataSchema.pre('save', function(next){
    const user = this
    bcrypt.hash(user.password, 10, (error,hash)=>{
    user.password = hash
    next()    
    });
});

// This is the export model

const AccountData = mongoose.model('AccountData',AccountDataSchema);
module.exports = AccountData