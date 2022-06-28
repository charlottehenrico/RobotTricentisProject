# Check if there is a new version of the driver and downloads it
# and returns the latest version driver path directory
from webdriver_manager.chrome import ChromeDriverManager


def get_chromedriver_path():
    driver_path = ChromeDriverManager().install()
    return driver_path