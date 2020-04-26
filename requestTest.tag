//These are the variables that will be entered in the form
//If email/phone/displayName are left empty, random values will be generated

firstName = "deleteMe"
lastName = "deleteMe"
displayName = ""
yearOfBirth = "1990"
emailAddress = ""
phone = "0621555123"
facebookProfile = "facebook.com"
postcode = "7626"
street = "kiss" //Doesn't have to be the entire streetname
houseNumber = "10"
infected = "false"
quarantine = "true"
chronicIllness = "false"
healthy = "false"
reason = "Meleg élelmiszer hiány"

//Generate random values
js randomValue = Math.floor(Math.random() * 8999999999)+10000000000;
if displayName == ""
   displayName = randomValue

if phone == ""
   phone = randomValue

if emailAddress == ""
   emailAddress = randomValue + "@mail.com"


//visit front page
https://coronavirus.dev.blueant-solutions.com/
keyboard [enter]

wait 3 seconds

//clicks the register button
click /html/body/div[2]/div[3]/div[1]/div/div/a

wait 3 seconds

type //*[@id="first_name"] as `firstName`
type //*[@id="last_name"] as `lastName`
type //*[@id="display_name"] as `displayName`
click /html/body/div[2]/div[1]/div/div/form/div[3]/div[4]/div/input
click `yearOfBirth`
type //*[@id="email"] as `emailAddress`
type //*[@id="phone"] as `phone`
//type //*[@id="facebook_profile"] as `facebookProfile`

click //*[@id="postcode"]
wait 0.5 second
keyboard `postcode`
wait 0.5 second
keyboard [down][enter]

click //*[@id="street"]
wait 0.5 second
keyboard `street`
wait 1.5 second
keyboard [down][enter]

type //*[@id="house_number"] as `houseNumber`

if infected == "true"
   click /html/body/div[2]/div[1]/div/div/form/div[6]/div[1]/div/div[2]/div/label/span

if quarantine == "true"
   click /html/body/div[2]/div[1]/div/div/form/div[6]/div[2]/div/div[2]/div/label/span

if chronicIllness == "true"
   click /html/body/div[2]/div[1]/div/div/form/div[6]/div[3]/div/div[2]/div/label/span

if healthy == "true"
   click /html/body/div[2]/div[1]/div/div/form/div[7]/div/div/div[2]/div/label/span

click /html/body/div[2]/div[1]/div/div/form/div[8]/div[1]/div/input
click `reason`
click //*[@id="privacy_policy"]

click /html/body/div[2]/div[1]/div/div/form/div[10]/div/button

wait 5 seconds

//Creates either a success or error file
if url() == "https://coronavirus.dev.blueant-solutions.com/segitseg-keres"
   echo "Test failed"
   js date = Date.now()
   js log = "The test failed at " + date
   dump `log` to registerError.txt

if url() != "https://coronavirus.dev.blueant-solutions.com/segitseg-keres"
   echo "Test succeeded"
   js date = Date.now()
   js log = "The test succeeded at " + date
   dump `log` to registerSuccess.txt
