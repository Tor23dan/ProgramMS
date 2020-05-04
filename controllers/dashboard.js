const User = require('../models/userSetupStore')

module.exports = (req, res) => {

    User.findById (req.session.accounttype, (typeaccount)=> {
        console.log(req.session.accounttype)

        const accountType = req.session.accounttype

                if(accountType == 'Administrator'){
                    res.redirect('/admin')
                }
                if(accountType == 'Lecturer'){
                    res.redirect('/lecturer')
                }
                if(accountType == 'Student'){
                    res.redirect('/student')
                }
            })
        }