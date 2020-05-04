const express = require('express'); // This is for the required express module.
const app = express(); //This is for calling express function to start new express applications.
const ejs = require('ejs'); //This is for calling ejs templates which works well with express databases.
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const expressSession = require('express-session');
const fileUpload = require('express-fileupload');

const homeController = require('./controllers/home');
const aboutController = require('./controllers/about');
const modulerecordController = require('./controllers/modulerecords');
const moduletemplateController = require('./controllers/moduletemplate');
const downloadController = require('./controllers/download');
const uploadController = require('./controllers/upload');
const loginController = require('./controllers/login');
const adminController = require('./controllers/admin');
const lecturerController = require('./controllers/lecturer');
const studentController = require('./controllers/student');
const dashboardController = require('./controllers/dashboard');
const userSetupController = require('./controllers/usersetup');
const userStoreController = require('./controllers/userStore');
const userLoginController = require('./controllers/userLogin');
const logoutController = require('./controllers/logout');

const redirectifAuthenticatedMiddleware = require('./middleware/redirectifAuthenticatedMiddleware'); //import for the middleware file
const authMiddleware = require('./middleware/authMiddleware'); //import for the authMiddleware to enable a check to ensure a user is logged in.
const flash = require('connect-flash');

//mongoose.connect('mongodb://localhost/PMS_database', {useNewUrlParser:true}); // connection to local database

mongoose.connect('mongodb+srv://Admin:plymouth@uniwork-ycahv.mongodb.net/test?retryWrites=true&w=majority', {useNewUrlParser:true});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({entended:true}));
app.use(fileUpload())

app.use(expressSession({
    secret:'keyboard cat'
}));

app.set('view engine','ejs'); //It sets the application to use ejs templates.

global.loggedIn = null;
global.loggedInAccount = null;

app.use("*",(req,res, next) => {
loggedIn = req.session.userId;
loggedInAccount = req.session.accounttype;
next()
});

app.use(flash());

app.use(express.static('public')); // This renders static files from the public folder
app.use('/xml', express.static('xml'));

let port = process.env.PORT;
if (port == null || port == "") {
    port = 4000;
}
app.listen(port, () => {
    console.log('Express has started on http://localhost:', +port, 'Press Ctrl-C to terminate.');
});

app.get('/',homeController);

app.get('/about',aboutController);

app.get('/modulerecords',authMiddleware,modulerecordController);

app.get('/moduletemplate',authMiddleware,moduletemplateController);

app.get('/userLogin',redirectifAuthenticatedMiddleware,loginController);

app.get('/admin',authMiddleware,adminController);

app.get('/lecturer',authMiddleware,lecturerController);

app.get('/student',authMiddleware,studentController);

app.get('/dashboard', dashboardController);

app.get('/usersetup',authMiddleware,userSetupController);   //includes authMiddleware controller

app.get('/auth/logout', logoutController);

app.get('/download', downloadController);

app.post('/upload',uploadController);

app.post('/userLogin/login',userLoginController);

app.post('/userSetup/store',userStoreController);

app.use((req, res)=> res.render ('notfound'));