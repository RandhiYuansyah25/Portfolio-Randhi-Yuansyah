*** Settings ***
Library    SeleniumLibrary
Resource    D:/Raya/Testing Automation/Testing AXA/Resources/02-ui menu pim.robot

*** Test Cases ***

#==========================================Test Case login==========================================#

TC01 - Akses menu PIM
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors    
    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}    
    Go To    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  
    Input username
    Sleep    1 second
    Input password2
    Sleep    1 second
    Click button login
    Sleep    1 second
    Click menu PIM
    Sleep    1 second
  







  


    
    