*** Settings ***
Documentation    The purpose of this challenge is for us to get a better understanding of
...              your abilities to automate a test on a native mobile application.
Resource         Keywords/generalKeyword.robot

*** Variables ***

*** Test Cases ***
theScore: Write an automated test that finds a league, team, or player within theScore app and verify the specified steps.
    [tags]                          theScore-1
    ...                             Regression
    # # Action: Open theScore app
    ${theScoreApp}                           Open Application     ${env_url}    platformName=Android    deviceName=emulator-5554    appPackage=${appPackage}   appActivity=${appActivityName}    automationName=uiautomator2
    
    # # Action: Complete start up settings for theScore application.
    # # Result: Application takes user to the favorites section of theScore application.
    Wait Until Page Contains Element         ${getStartedButton}
    Click Element                            ${getStartedButton}
    Wait Until Page Contains Element         ${favoriteLeagueSelection}
    Click Element                            ${favoriteLeagueSelection}
    Wait Until Page Contains Element         ${continueButton}
    Click Element                            ${continueButton}    
    Wait Until Page Contains Element         ${maybeLaterButton}
    Click Element                            ${maybeLaterButton}
    Wait Until Page Contains Element         ${continueButton}
    Click Element                            ${continueButton}
    Wait Until Page Contains Element         ${doneButton}
    Click Element                            ${doneButton}
    Wait Until Page Contains Element         ${dismissModal}
    Click Element                            ${dismissModal}

    # # Action: Go to the search section and search by team.
    # # Result: The correct team is populated and user is taken to the team page.
    Wait Until Page Contains Element         ${searchPath}
    Click Element                            ${searchPath}
    Wait Until Page Contains Element         ${inputPath}
    Click Element                            ${inputPath}
    Input Text                               ${inputPath}    ${teamSelection}
    Hide Keyboard
    Wait Until Page Contains Element         //android.widget.TextView[@text="Los Angeles Lakers"]
    Click Element                            //android.widget.TextView[@text="Los Angeles Lakers"]

    # # Action: Go to the team stats tab.
    # # Result: The stats page is displayed for the correct team.    
    Wait Until Page Contains Element         //android.widget.TextView[@text="TEAM STATS"]
    Click Element                            //android.widget.TextView[@text="TEAM STATS"]
    Wait Until Page Contains Element         //android.widget.TextView[@text="STATS"]
    ${statsHeader}                           AppiumLibrary.Get Text   //android.widget.TextView[@text="STATS"]
    Should Be Equal As Strings     ${statsHeader}    STATS
    ${teamHeader}                           AppiumLibrary.Get Text   //android.widget.TextView[@text="Los Angeles Lakers"]
    Should Be Equal As Strings     ${teamHeader}    Los Angeles Lakers

    # # Action: Click the back navigation.
    # # Result: The back navigation returns you to the previous page correctly.   
    AppiumLibrary.Go Back
    Wait Until Page Contains Element         ${inputPath}
    Click Element                            ${inputPath}
    [Timeout]                           90s
