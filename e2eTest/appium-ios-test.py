"""
Simple iOS tests, showing accessing elements and getting/setting text from them.
"""
import unittest
import os
from appium import webdriver
from time import sleep
from appium.webdriver.common.touch_action import TouchAction

class SimpleIOSTests(unittest.TestCase):

    def localConfig(self):
        app = os.path.abspath('/Users/wangrenmin/Library/Developer/Xcode/DerivedData/WeexDemo-hkburhkjuuycizhifsdoljkgyrfo/Build/Products/Debug-iphonesimulator/WeexDemo.app')
        self.driver = webdriver.Remote(
            command_executor='http://127.0.0.1:4723/wd/hub',
            desired_capabilities={
                'app': app,
                'platformName': 'iOS',
                'platformVersion': '12.4',
                'deviceName': 'iPhone 6'
            })

    def sauceLabConfig(self):
        username = "renmin"
        access_key = "6b19f4d0-7119-4151-9acd-a5f39d242167"
        app = "sauce-storage:weexplayground-ios.zip" 

        self.driver = webdriver.Remote(
            command_executor='http://{}:{}@ondemand.saucelabs.com:80/wd/hub'.format(username, access_key),
            desired_capabilities={
                'app': app,
                'platformName': 'iOS',
                'platformVersion': '12.2',
                'deviceName': 'iPhone 6 Simulator',
                'automationName': 'xcuitest'
            })

    def setUp(self):
        # self.localConfig()
        self.sauceLabConfig()

    def tearDown(self):
        self.driver.quit()

    def check_result(self):
        self.driver.find_element_by_accessibility_id("Cancel")
        alert = self.driver.switch_to_alert()
        self.assertEqual(alert.text, "success")
        alert.accept()
        self.driver.find_element_by_class_name("XCUIElementTypeButton").click()

    def animation_test(self):
        # max waiting time to find element in this case
        self.driver.implicitly_wait(5000)
        sleep(2)
        test1 = self.driver.find_element_by_accessibility_id("AnimationTest")
        test1.click()
        self.driver.find_element_by_accessibility_id("test").click()
        self.check_result()

    def test_ui_computation(self):
        self.animation_test()

if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(SimpleIOSTests)
    unittest.TextTestRunner(verbosity=2).run(suite)
