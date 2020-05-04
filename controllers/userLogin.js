const bcrypt = require('bcrypt')
const User = require('../models/userSetupStore')

module.exports = (req, res) => {
    const {username, password} = req.body;

    User.findOne({username:username}, (error,user)=> {
        console.log(user)
        if(user){
            bcrypt.compare(password, user.password, (error, same) =>{
                if(same){
                    req.session.userId = user._id
                    req.session.username = user.username
                    req.session.accounttype = user.accounttype
                    console.log(req.session)
                    res.redirect('/dashboard')
                }
                else{
                    const validationErrors = 'Invalid Password Please Provide valid Password'
                        req.flash('validationErrors',validationErrors)
                    console.log('Invalid Password')
                    res.redirect('/userLogin')
                }
            })
        }
        else{
            const validationErrors = 'Invalid Username Please Provide valid Username'
                req.flash('validationErrors',validationErrors)
            console.log('Invalid Username')
            res.redirect('/userLogin')
        }
    })
}