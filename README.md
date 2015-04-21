# cheers_take2
NSS C8 - P2-W3 - The ruby cheers excercise (see: complikatyed/cheers), three weeks into Ruby, with tests.

## Instructions
(What are we supposed to do?)

## Specifications, for non-interative version of cheers
(How does the program work?)

### Help Usage

Run the program by running './cheers.rb'

The program will print out:

> I would wish you a Happy Birthday, if I knew when that was!

> Try again with './cheers.rb [Name] [MM/DD Birthday]'


### Regular Usage

The first argument is the user's name.  The second argument is the
user's birthday.

The program outputs a cheer in the following form:


> Give me an... E

> Give me an... L

> Give me an... I

> Give me a...  Z

> Give me an... A

> Eliza’s just GRAND!


* Follow the proper grammatical rules for a and an
* When printing cheer letters, strip out all special characters (i.e., non-word characters)
* Print the user's name as it was originally input for the "just GRAND"
  line (including special characters)

If no name input is given, the program will print out:

> I'd cheer for you, if only I knew who you were :-(

> Try again with './cheers.rb [Name] [MM/DD Birthday]'

After printing out the user's cheer, the program outputs  the number of
days until the user's birthday:

> Awesome!  Your birthday is in 45 days!  Happy Birthday in advance!


* If input could not be parsed, (i.e.,August twenty-fifth) the program says:

> I couldn't undestand that.  Could you give me your birthday in
> mm/dd format next time?


## Specifications, for interative version of cheers
(How does the program work?)

Start the program by running './cheers.rb'

The program should ask:
> Hello!  What is your name?

User types in name, for example:

> Eliza

The program outputs a cheer in the following form:


> Give me an... E

> Give me an... L

> Give me an... I

> Give me a...  Z

> Give me an... A

> Eliza’s just GRAND!


* If no input is given, continue asking until valid input is provided
* Follow the proper grammatical rules for a and an
* When printing cheer letters, strip out all special characters (i.e., non-word characters)
* Print the user's name as it was originally input for the "just GRAND"
  line (including special characters)

After printing out the user's cheer, the program asks:

> Hey Eliza, what's your birthday? (mm/dd)

The user types in the birthdate.

> 08/25

* If there was no input, program asks again until valid input is provided.
* If input could not be parsed, (i.e.,August twenty-fifth) the program says:

> I couldn't undestand that.  Could you give me your birthday in
> mm/dd format?

The program then outputs the number of days until the user's
birthday:

> Awesome!  Your birthday is in 45 days!  Happy Birthday in advance!


