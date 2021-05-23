require "selenium-webdriver"
require "chromedriver-helper"

driver = Selenium::WebDriver.for :chrome 
driver.navigate.to "https://stoxx.netlify.app/"

login = driver.find_element(link_text: "Login")
login.click

sign_up = driver.find_element(css: "button.ui.button")
sign_up.click

driver.quit