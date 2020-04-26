//These are the variables that will be entered in the form
//If email/phone/displayName are left empty, random values will be generated

firstName = "deleteMe"
lastName = "deleteMe"
displayName = ""
yearOfBirth = "1990"
emailAddress = ""
phone = "9999999999"
facebookProfile = "facebook.com"
postcode = "7626"
street = "kiss" //Doesn't have to be the entire streetname
houseNumber = "10"
availabilityOption = "Reggeltől-Estig"
assistanceTypeOption = "Tüzelő hiány"


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
click //*[@id="volunteer_reg_form"]/div[3]/div[4]/div/input
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

click
click //*[@id="volunteer_reg_form"]/div[6]/div[2]/div/div/input
click `availabilityOption`
click //*[@id="volunteer_reg_form"]/div[6]/div[3]/div/div/input
click `assistanceTypeOption`
keyboard [esc]

click //*[@id="area_postcode_1"]
wait 0.5 second
keyboard `postcode`
wait 0.5 second
keyboard [down][enter]

click //*[@id="area_street_1"]
wait 0.5 second
keyboard `street`
wait 1.5 second
keyboard [down][enter]

click //*[@id="privacy_policy"]
click //*[@id="health_checkbox"]

click /html/body/div[2]/div[1]/div/div/form/div[10]/div/button

wait 1 seconds

//Creates either a success or error file
if url() == "https://coronavirus.dev.blueant-solutions.com/onkentes-regisztracio"
   echo "Test failed"
   js var date = Date.now()
   js var log = "The test failed at " + date
   dump `log` to registerError.txt

if url() != "https://coronavirus.dev.blueant-solutions.com/onkentes-regisztracio"
   echo "Test succeeded"
   js var date = Date.now()
   js var log = "The test succeeded at " + date
   dump `log` to registerSuccess.txt
