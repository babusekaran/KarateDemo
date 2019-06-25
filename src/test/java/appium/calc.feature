Feature: Appium Karate Demo

  Background: App Preset
    * configure driver = { type: 'android' }
    * def driverCaps = {}
    * set driverCaps
      | path                    | value              |
      | app                     | "Calculator.apk"   |
      | newCommandTimeout       | 300                |
      | platformVersion         | "8.1.0"            |
      | platformName            | "Android"          |
      | connectHardwareKeyboard | true               |
      | deviceName              | "emulator-5554"    |
      | avd                     | "Pixel_OREO_27_BS" |
      | automationName          | "UiAutomator2"     |

  Scenario: Calculator
    Given driver driverCaps
    * def deviceInfo = driver.eval("mobile:deviceInfo")
    And driver.click('#org.tadaedo.calc:id/btn_1')
    And driver.click('#org.tadaedo.calc:id/btn_puls')
    And driver.click('#org.tadaedo.calc:id/btn_7')
    When driver.click('#org.tadaedo.calc:id/btn_equa')
    Then match driver.text('#org.tadaedo.calc:id/text') contains '8'
    And driver.click('#org.tadaedo.calc:id/btn_clear')
