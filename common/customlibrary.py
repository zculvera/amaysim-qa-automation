import chromedriver_autoinstaller
from selenium import webdriver

def setup_chrome_driver():
    chromedriver_autoinstaller.install()  # Check if the current version of chromedriver exists
                                      # and if it doesn't exist, download it automatically,
                                      # then add chromedriver to path