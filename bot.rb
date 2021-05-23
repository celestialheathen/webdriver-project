require "selenium-webdriver"
require "chromedriver-helper"

driver = Selenium::WebDriver.for :chrome 
driver.navigate.to "https://stoxx.netlify.app/"

login = driver.find_element(link_text: "Login")
login.click


sign_up = driver.find_element(xpath: '//*[@id="login-form"]/div/button[2]')
sign_up.click

driver.find_element(name: "name").send_keys "james"
driver.find_element(name: "password").send_keys "james"

submit = driver.find_element(link_text: "Sign up").click

driver.quit