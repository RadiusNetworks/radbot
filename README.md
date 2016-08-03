# RadBot

The ever faithful Radius Networks chat bot.

## GitHub Pinger

To configure RadBot to notifiy you of mentions or assignments on github you have to map your slack username to your github username. This can be done in the `lita_config.rb` file. Find the `config.handlers.github_pinger.engineers` hash and add a line. Don't forget the trailing comma.

```
"Rory Williams" => { usernames: { slack: "rory",   github: "rory_pond" } },
```

## Avaliable Commands

Helpful Commands:

```
help - Lists help information for terms and command the robot will respond to.
help COMMAND - Lists help information for terms or commands that begin with COMMAND.
info - Replies with the current version of Lita.
join ROOM_ID - Makes the robot join the room with room ID ROOM_ID.
part ROOM_ID - Makes the robot part from the room with room ID ROOM_ID.
users find SEARCH_TERM - Find a Lita user by ID, name, or mention name.
is SOME_URL down? - Tells you whether SOME_URL is working or not.
hangout - Generates a random Google+ Hangout URL
hangout me - Generates a Google+ Hangout URL based on user name
hangout me <topic> - Generates a Google+ Hangout URL based on informed topic
hangout me <topic> - Generates a Google+ Hangout Presentation URL based on informed topic
wtf is <term> - Get the description of <term>
define <term> is <defintion> - Set the description of <term> to <definition>
```

Funner Commands:

```
catgif - Returns a random Catgif
karma worst [N] - Lists the bottom N terms by karma. N defaults to 5.
karma best [N] - Lists the top N terms by karma. N defaults to 5.
karma modified TERM - Lists the names of users who have upvoted or downvoted TERM.
TERM++ - Increments TERM by one.
TERM-- - Decrements TERM by one.
TERM~~ - Shows the current karma of TERM.
TERM1 += TERM2 - Links TERM2 to TERM1.
TERM1 -= TERM2 - Unlinks TERM2 from TERM1.
```

Meme Generator:

```
Y U NO____.
I DON'T ALWAYS ____ BUT WHEN I DO, ____
____O RLY____
____SUCCESS____
____NAILED IT____
ALL the____
TOO DAMN____
GOOD NEWS EVERYONE____
NOT SURE IF____ OR____
YO DAWG____
ALL YOUR____ ARE BELONG TO US
____ You're gonna have a bad time
one does not simply____
grumpy cat ____ , ____
it looks like you're ____
it looks like you____
AM I THE ONLY ONE AROUND HERE____
____NOT IMPRESSED
PREPARE YOURSELF____
WHAT IF I TOLD YOU____
____BETTER DRINK MY OWN PISS
khanify ____.
____, ____ EVERYWHERE
____ THAT WOULD BE GREAT
____ AIN'T NOBODY GOT TIME FOR THAT
____ I TOO LIKE TO LIVE DANGEROUSLY
___ SHUT UP AND TAKE MY MONEY
YOU KNOW WHAT REALLY GRINDS MY GEARS? ____
___ CHALLENGE ACCEPTED
```



