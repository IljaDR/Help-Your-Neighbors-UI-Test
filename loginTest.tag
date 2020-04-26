emailAddress = "testAccount@mail.com"
password = "passord123"

//visit front page
https://coronavirus.dev.blueant-solutions.com/
keyboard [enter]

wait 3 seconds
click /html/body/nav/div/ul/li/a[2]

type //*[@id="email"] as `emailAddress`
type //*[@id="password"] as `password`

click //*[@id="login_btn"]

wait 1 second

//The fail/success check assumes the user should get redirected to a different webpage upon logging in

if url() == "https://coronavirus.dev.blueant-solutions.com/login"
   echo "Login test failed"
   js var date = new Date.now()
   js var log = "The test failed at " + date
   dump `log` to loginError.txt

if url() != "https://coronavirus.dev.blueant-solutions.com/login"
   echo "Login test succeeded"
   js var date = new Date.now()
   js var log = "The test succeeded at " + date
   dump `log` to loginSuccess.txt
