module.exports = (req, res) =>{
    res.render('usersetup', {
        errors:req.flash('validationErrors')
    })
}