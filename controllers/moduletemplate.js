module.exports = (req, res) =>{
    res.render('moduletemplate', {
        errors:req.flash('validationErrors')
    })
}