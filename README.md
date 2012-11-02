Derp-bear-rspec-watir-webdriver
===============================

Derp Bear examples using [RSpec](https://www.relishapp.com/rspec), [Taza](https://github.com/hammernight/taza), and [Watir-Webdriver](http://watirwebdriver.com/)

## The examples are broken out into 3 types
- RSpec and Watir-WebDriver
- Rspec Watir-WebDriver and Taza using the old Block style
- Rspec Watir-WebDriver and Taza using newer syntax


## Running the examples
There are 2 ways to run the examples

- using the following command will give you a list of all the available examples

    rake -T

- using the rspec command will run all of the examples

## Options

Taza allows you to specify which browser you wish to use to run the tests with by passing the __BROWSER__

this will run all tests in the chrome browser

    BROWSER=chrome rspec

this will run all tests in the iOS simulator if you have it open and [iphonedriver](http://code.google.com/p/selenium/wiki/IPhoneDriver)  configured properly

    BROWSER=iphone rspec

### Supported Browsers

additional configuration on your end may be required to set up the proper [WebDrivers](http://code.google.com/p/selenium/w/list)

- Chrome
- Firefox
- iPhone
- Android
- InternetExplorer
- Safari

## Please feel free to submit or request an example

[HERE](https://github.com/orieken/derp-bear-rspec-watir-webdriver/issues)

## Additional examples

[Using Selenium-WebDriver and RSpec](https://github.com/orieken/derp-bear-rspec-selenium-webdriver)
[Using Watir-WebDriver and Cucumber]()
[Using Selenium-WebDriver and Cucumber]()


##Videos of how I wrote the tests coming soon