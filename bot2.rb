require "selenium-webdriver"
require "chromedriver-helper"

driver = Selenium::WebDriver.for :chrome 
driver.navigate.to "https://stoxx.netlify.app/"

search_bar = driver.find_element(tag_name: "input")
search_bar.send_keys("TSLA!!!!!!")

# search_bar.clear

# search_bar.submit

search_bar.context_click

driver.quit