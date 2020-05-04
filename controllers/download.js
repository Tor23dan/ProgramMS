module.exports = (req, res) =>{
    var file = __dirname + '/LecturerTemplate/Mod_Specification.xlsx';

    res.download(file);
}