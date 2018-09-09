*** Settings ***
Library  Selenium2Library

*** Keywords ***
Search Books
    click link  xpath://a[contains(@href,'/media')]
    wait until element is visible  xpath://a[text()='Elektronické knihy']
    click link  xpath://a[contains(@href,'/media/elektronicke-knihy/18854341.htm')]
    wait until element is visible   xpath://a[contains(@title,'Knihy')]
    click link  xpath://a[contains(@title,'Knihy')]
Click on book
    click element  xpath://*[contains(text(),'Labyrint pohybu')]
Close popupwindow
    click element  xpath://*[contains(text(),'Zavřít')]
Add book on cart
    wait until element is visible   xpath://*[contains(text(),'Koupit')]
    click element   xpath://*[contains(text(),'Koupit')]
