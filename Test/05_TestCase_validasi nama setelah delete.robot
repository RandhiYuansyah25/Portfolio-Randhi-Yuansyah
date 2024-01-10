*** Settings ***
Library    SeleniumLibrary
Resource    D:/Raya/Testing Automation/Testing AXA/Resources/05-ui validasi nama setelah delete.robot

*** Test Cases ***

#==========================================Test Case Pilih Pinjaman==========================================#
TC01 - cari nama employee yang sudah di hapus
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
    Input nama employee setelah di hapus
    Sleep    1 second
    Click button search





  


    
    