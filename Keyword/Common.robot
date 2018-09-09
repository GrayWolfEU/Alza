*** Settings ***
Library  Selenium2Library
Variables  Variable/Variables.py
Variables  Locators/Elements.py

*** Keywords ***
Open Alza website
    open browser    ${URL}  ${Browser}
    maximize browser window

Verify the Home page
    wait until element is visible   ${Logo}
    log to console  Home page verified