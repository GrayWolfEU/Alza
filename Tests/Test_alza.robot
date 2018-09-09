*** Settings ***
Library  Selenium2Library
Resource  Keyword/Alza_books.robot
Resource  Keyword/Common.robot
Variables  Variable/Variables.py

*** Test Cases ***
TC_001 Purchase electronic books
    [Tags]  Smoke
    Open Alza website
    Verify the Home page
    Search Books
    Click on book
    Close popupwindow
    Add book on cart
    sleep  3s
    close browser


