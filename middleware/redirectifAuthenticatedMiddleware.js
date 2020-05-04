module.exports = (req,res,next) => {
    console.log("Hello User")
    console.log(req.session.userId)
    console.log(req.session.username)
    const typeaccount = req.session.accounttype

    if(typeaccount == "Administrator"){
        return res.redirect('/admin')
    }
    if(typeaccount == "Lecturer"){
        return res.redirect('/Lecturer')
    }
    if(typeaccount == "Student"){
        return res.redirect('/Student')
    }
    {next()}
}