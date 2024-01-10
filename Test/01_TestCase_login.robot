*** Settings ***
Library    SeleniumLibrary
Resource    D:/Raya/Testing Automation/Testing AXA/Resources/01-ui login.robot

*** Test Cases ***

#==========================================Test Case login==========================================#
TC01 - Login dengan data benar
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


TC02 - Login dengan data salah
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors    
    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}    
    Go To    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  
    Input username salah
    Sleep    1 second
    Input password2 salah
    Sleep    1 second
    Click button login
    Sleep    1 second


#






  


    
    