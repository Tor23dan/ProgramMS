const AccountData = require('../models/userSetupStore.js')
const path = require('path')

module.exports = (req, res) => {
    AccountData.create(req.body, (error, accountdata) => {
        console.log(error)
        if(error){
        const validationErrors = Object.keys(error.errors).map(key =>
                error.errors[key].message)
                req.flash('validationErrors',validationErrors)
                console.log(error.errors)
            return res.redirect('/userSetup')
        }
        res.redirect('/admin')
    })
}