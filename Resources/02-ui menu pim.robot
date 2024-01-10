*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#==========================================login==========================================#
${nomor username}    xpath=/html/body/div[1]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input
${nomor password}    xpath=/html/body/div[1]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input
${button login}    xpath=/html/body/div[1]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
${menu PIM}    xpath=/html/body/div[1]/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a


*** Keywords ***
#==========================================Steps login==========================================#

Input username 
    Wait Until Element Is Visible   ${nomor username}      10
    Input Text    ${nomor username}    Admin

Input password2
    Wait Until Element Is Visible   ${nomor password}      10
    Input Text    ${nomor password}    admin123

Click button login
    Wait Until Element Is Visible    ${buttonlogin}    10
    Click Element    ${buttonlogin}

Click menu PIM
    Wait Until Element Is Visible    ${menu PIM}    10
    Click Element    ${menu PIM}



    
    