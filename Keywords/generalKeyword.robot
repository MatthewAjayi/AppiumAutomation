*** Settings ***
# # Run: robot --variable environmentStatus:debug .\PET-1685.robot
Documentation    This is a resource file, that can contain variables and keywords for the app.
Library          Browser
Library          String
Library          FakerLibrary
Library          AppiumLibrary
Library          OperatingSystem
Library          DateTime
Library          Collections
Library          random

*** Variables ***
${getStartedButton}=    //android.widget.TextView[@text="Get Started"]
${continueButton}=      //android.widget.TextView[@text="Continue"]
${teamSelection}=       Lakers
${favoriteLeagueSelection}=    //android.widget.TextView[@text="NBA Basketball"]
${maybeLaterButton}=    //android.widget.TextView[@text="Maybe Later"]
${doneButton}=     //android.widget.TextView[@text="Done"]
${dismissModal}=    //android.widget.ImageView[@resource-id="com.fivemobile.thescore:id/dismiss_modal"]
${searchPath}=    //android.widget.TextView[@text="Teams, Players, and News"]
${inputPath}=    //android.widget.EditText[@text="Teams, Players, and News"]
