    ,---------------------------,
    |  /---------------------\  |
    | |                       | |
    | |                       | |
    | |    ##....weavemate_94 | |
    | |                       | |
    | |                       | |
    |  \_____________________/  |
    |___________________________|


Link to this Repository here
https://github.com/daisy-watt/babys_first_app.git

INSTALLATION INSTRUCTIONS:

Instal ruby ______
Clone the repository from the supplied github link. 
cd into source folder


#SYSTEM REQUIREMENTS:

Ruby v2.4 or later
Mac OS or Windows OS 

DEPENDANCIES:

colorize (0.8.1)
paint (2.2.1)
tty-editor  (0.7.0)
tty-prompt (0.23.1)
json (2.6.1) 

STATEMENT OF PURPOSE AND SCOPE:

In ten words or less, this application turns words into coloured weave structures. 

The app also has a section dedicated to the tedious yet basic calculations weavers and textile folk need when planning and developing woven work on the loom. Perhaps in the future for weavemate_94 there is potential scope for then ciphering the weave structures back into words. The app also outputs coloured weaves, specifically with precise RGB values. The fashion and textile industry are heavily reliant on precise color matching and utilizes color index libraries such as pantone© - who provide RGB values for their thousands and thousands of colors. It also has a section which performs automated calculations for weave planning and loom set up requirements.

The application has two main parts to it: The weave encryption element, as well as a
weave pocket calculator - There's also a tongue-in-cheek ghost category(deciper_weave) for a potential new feature that was cut from this round of production due to scoping issues. Personally I have been fascinated with data visualization in creative practices and have been eager for the opportunity to be able to actualize something from this intersection of ideas. This application allows me to automate something I have been trying to generate within weaving (up until recently this process was largely graphed out on graph paper and pencils...).

The target audience for this app is broken into two parts; one part focusing on other studio weavers or textile folk who regularly work with looms. They would benefit from the automation of some basic calculations and from the streamlining of accessing their sley sequence specifications for loom set up requirements. The second part of this application's intended targeted audience would be for anyone with a curiosity for weaving and tongue-in-cheek-encryption, it could provide entertainment and indulge cheeky creativity. 


FEATURES DESCRIPTIONS:


- make_weave_encryption:
    - turns written message into a "weave structures"
    This feature is the "main event" of the app. It matches alphabetical characters with their pre assigned structure, producing output within the terminal of a string of those structures - which is just a re-interpretation of the original alphabetical message. It plays with ideas of data visualisation and encryption, in a lighthearted way.
       
        - "Paint" gem allowing for precises color matching
            - randomise colour options
            - Precise RGB imput for "warp"(background) and "weft"(forground)
            - Saves the weave as "secret_weave"
            - allows you to open the raw file in a txt editor (will link this with the ciphering element)
        - Randomise 

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


IMPLEMENTATION PLAN: 
trello screenshots, with dates and times
screenshots of feature developments and deetails of dates ect

CONTROL FLOW DIAGRAM:


GITLOG FILES/LINK:


HELP DOCUMENTATION:





