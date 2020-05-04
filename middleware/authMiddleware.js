const User = require('../models/userSetupStore')

module.exports = (req,res,next) => {
    User.findById(req.session.userId, (error, user) => {
        if(error || !user)
        return res.redirect('/')
        next()
    })
}