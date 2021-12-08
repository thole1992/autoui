*** Settings ***
Library           SeleniumLibrary

*** Variable ***
${LOGIN URL}      https://app-supplier-qc.web.app/home?backUrl=%2F
${BROWSER}        Chrome
${LOGIN}          //div[@class="c-btn-login-2"]
${elusername}     //input[@id='username']
${elpassword}     //input[@id='password']
${UserNamelogin}    tho.le1@onemount.com
${Passwordlogin}    1234
${buttontieptuc}    //button[@type='submit']

*** Test Cases ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Wait Until Element Is Visible    ${LOGIN}
    click element    ${LOGIN}

login account
    Input Text    ${elusername}    ${UserNamelogin}
    Input Text    ${elpassword}    ${Passwordlogin}
    sleep    3s
    click element    ${buttontieptuc}
    sleep    3s

open danh sach tai xe
    Wait Until Element Is Visible    //*[contains(text(),'Đồng ý')]
    click element    //*[contains(text(),'Đồng ý')]
    Wait Until Element Is Visible    //*[contains(text(),'Để lúc khác')]
    click element    //*[contains(text(),'Để lúc khác')]
    Wait Until Element Is Visible    //mat-toolbar/div[1]/button/span[1]/mat-icon
    click element    //mat-toolbar/div[1]/button/span[1]/mat-icon
    click element    //*[contains(text(),'Điều phối chuyến')]
    sleep    3s
    click element    //*[contains(text(),'Danh sách tài xế')]
    sleep    3s

verify danh sach tai xe theo ngay
    Press Keys    //input[@data-placeholder='Tên tài xế']    Hanhhhhhhh    \ue007

verify danh sach tai xe theo sdt

verify danh sach tai xe theo trang thai

verify danh sach tai xe theo npp

open danh sach xe
