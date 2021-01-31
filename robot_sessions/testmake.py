import time

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager

# from data_provider import *
import re

browserName = "chrome"

if browserName == "chrome":
    driver = webdriver.Chrome(ChromeDriverManager().install())
elif browserName == "firefox":
    driver = webdriver.Firefox(executable_path=GeckoDriverManager().install())
else:
    raise Exception("Driver is not found!!")

driver.implicitly_wait(5)
driver.get("https://www.makemytrip.com/")
time.sleep(5)
driver.find_element(By.ID, "fromCity").send_keys("harsha")
time.sleep(5)
driver.quit()
