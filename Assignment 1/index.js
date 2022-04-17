var today = new Date();
var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
consoleLogger("Clément, Matteo, Louis and Vincent",time)
function consoleLogger(test,time){
    console.log("This text has been logged in the web console by " + test + " at " + time)
}