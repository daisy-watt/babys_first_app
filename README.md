    ,---------------------------,
    |  /---------------------\  |
    | |                       | |
    | |                       | |
    | |    ....weavemate_94   | |
    | |                       | |
    | |                       | |
    |  \_____________________/   |
    |___________________________|
   ,---\_____     []     _______/------,
  /         /______________\           /|
/___________________________________ /  | ___
|                                   |   |    )
|  _ _ _                 [-------]  |   |   (
|  4 2 0                 [-------]  |  /    _)_
|__________________________________ |/     /  /
/-------------------------------------/|   ( )/
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

Link to this Repository here

INSTALL INSTRUCTIONS:

Get the repository from the link. 

Go to src folder. cd src

Run the install.sh file in terminal. sh install.sh

cd src
sh install.sh
This will install the gem bundler and the gems needed.

System Requirements:

Ruby v2.4 or later
Mac OS or Windows OS 

Dependencies:

colorize (0.8.1)
paint (2.2.1)
tty-editor  (0.7.0)
tty-prompt (0.23.1)
json (2.6.1) 

STATEMENT OF PURPOSE AND SCOPE(300-500words):

This application turns words into coloured weave structures, which has future scope for then ciphering the weave structures back into words. eavemate_94 also has the ability to colour eaves specifically with precise RGB values, and output the weave. It also has a section which performs automated calculcations for weave planning and loom set up requiremnts.

- Identify the problem the app is solving, Explain why i am developing it
The application has two main parts to it, The weave encrytpion element, as well as a 
weave pocket calculator. I personally have been fascinated with data visualisation in creative practices, specifically woven structures in my case. This application allows me to automate something i have been generating and weaving (with graph paper and pencils.) which typically takes a long time to be able to see the outcome. I1

 that helps make the loom set up and preperation less tedious by automating a load of math calculations needed for the weaveing set up process. 

- Identify the target audience and explain how the target audience would use it

FEATURES DESCRIPTIONS:

- make_weave_encryption:
    - turns written message into a "weave structures"
    This feature is the "main event" of the app. It matches alphabetical characters with their pre assigned structure, producing output within the terminal of a string of those structures - which is just a re-interpretation of the original alphabetical message. It plays with ideas of data visualisation and encryption, in a lighthearted way.
       
        - "Paint" gem allowing for precises color matching
            - randomise colour options
            - Precise RGB imput for "warp"(background) and "weft"(forground)
            - Saves the weave as "secret_weave"
            - allows you to open the raw file in a txt editor (will link this with the ciphering element)

- weave_calculator:
    - epi_calculator:
        created a function to calculate the EPI (Ends Per Inch) for weave planning purposes. This feature takes imput from the user and returns a value. This method takes one argument(The total wraps per inch of the desired thread) and then performs a calculation that produces a return value of 2/3rd of the original value. This value is what is used as the Ends Per Inch value for further use in the warp planning process.  
    - total_ends_calculator
        Similar to the epi_calculator, this function is used to calculate the total ends of the entire warp, based on the value from Ends Per Inch. This method performs a simple multiplication calculation that takes two imputs from the user then returns the multiplication of both values. This method also uses basic type coercion to  be able to perform the math function - turninmg the imput from a string to a interger.            
    - sley_sequence_finder
        This feataure gives the user the ability to find the right sequence/setting for the loom they are using, dep[ending on a couple of other varioables. Normally this information is sotored in a table/chart and is slow to read, this function using keys for keys and values to access the right sequence based on the imput of the user - spitting out the correct sequence/settings for their loom set up.
        This method pulls information from a JSON file, which has a large hash within a hash. 
                                          

- cipher_weave:
    - planned for an extra feature, didnt execute this idea in its entireity 

OUTLINE USER INTERACTIONS/EXPERIENCE:


IMPLEMENTATION PLAN 
trello screenshots, with dates and times
screenshots of feature developments and deetails of dates ect

CRONTROL FLOW DIAGRAM.... 


GITLOG FILES/LINK:


HELP DOCUMENTATION:





