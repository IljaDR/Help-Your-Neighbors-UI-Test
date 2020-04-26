error = "false"

emailAddress = "xadeyem839@hubopss.com"
passWord = "password"

//visit front page
https://coronavirus.dev.blueant-solutions.com/
keyboard [enter]

wait 3 seconds
click /html/body/nav/div/ul/li/a[2]

type //*[@id="email"] as `emailAddress`
type //*[@id="password"] as `passWord`

click //*[@id="login_btn"]

//Profile menu
click /html/body/div[1]/div[3]/div[1]/div[3]/div[1]/ul/li[3]/a

wait 2 second

if url() != "https://coronavirus.dev.blueant-solutions.com/admin/profile"
   error = "profile page"

//Save
click /html/body/div[1]/div[3]/div[2]/div[1]/form/div[14]/div/button

//Home
click /html/body/div[1]/div[3]/div[1]/div[3]/div[1]/ul/li[2]/a

wait 1 second

if url() != "https://coronavirus.dev.blueant-solutions.com/admin"
   error = "homescreen"


//Create new help request
click /html/body/div[1]/div[3]/div[1]/div[3]/div[1]/ul/li[5]/a

wait 1 second

if url() != "https://coronavirus.dev.blueant-solutions.com/admin/uj-segitsegkeres"
   error = "help request page"


//Waiting help requests
click /html/body/div[1]/div[3]/div[1]/div[3]/div[1]/ul/li[6]/a

wait 1 second

if url() != "https://coronavirus.dev.blueant-solutions.com/admin/nyitott-segitsegkeresek"
   error = "waiting help requests page"


//Help requests volunteered
click /html/body/div[1]/div[3]/div[1]/div[3]/div[1]/ul/li[7]/a

wait 1 second

if url() != "https://coronavirus.dev.blueant-solutions.com/admin/sajat-segitsegkeresek"
   error = "help requests volunteered page"


//My help requests
click /html/body/div[1]/div[3]/div[1]/div[3]/div[1]/ul/li[8]/a

wait 1 second

if url() != "https://coronavirus.dev.blueant-solutions.com/admin/leadott-segitsegkeresek"
   error = "my help requests page"

//List of Guardians
click /html/body/div[1]/div[3]/div[1]/div[3]/div[1]/ul/li[10]/a

wait 1 second

if url() != "https://coronavirus.dev.blueant-solutions.com/admin/vigyazok"
   error = "list of guardians page"


//Logout
click /html/body/div[1]/div[1]/div[4]/div[2]/div/div/div/div/a[2]

wait 2 second

if url() != "https://coronavirus.dev.blueant-solutions.com/"
   error = "logout"

if error != "false"
   echo "Login test failed"
   js date = Date.now()
   js log = "The test failed at " + error + " at " + date
   dump `log` to loginError.txt

if error == "false"
   echo "Login test succeeded"
   js date = Date.now()
   js log = "The test succeeded at " + date
   dump `log` to loginSuccess.txt
