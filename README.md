# Get started
## Install requirements
```
brew install ruby
gem install bundler
gem install cucumber
sudo gem install selenium-webdriver
gem install rspec
```

### chromedriver
install chromedriver using
```
brew cask install chromedriver
```

### selenium
Download selenium jar file using:
```
curl -L0 https://selenium-release.storage.googleapis.com/3.9/selenium-server-standalone-3.9.1.jar -o selenium-server-standalone.jar
```

## Run UI tests:
run smoke tests
```
cucumber --tags "@smoke" -f pretty -f html -o result/report.html   
```
run all tests
```
cucumber -f pretty -f html -o result/report.html   
```

check the report in ```result/report.html```
