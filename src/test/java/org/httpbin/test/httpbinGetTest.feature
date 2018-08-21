#Author: Babu Sekaran
#Keywords Summary : Feature to test httpbin /get behaviour

@tag
Feature: test httpbin /get behaviour 

	Background: Default needs to load for every scenario
		* url baseUrl

  Scenario: get with no params
    Given path "/get"
    When method get
    Then status 200
    And print response
    And match response.args == {}
  
  Scenario: get with one params
    Given path "/get"
    And param name = 'Sherlock'
    When method get
    Then status 200
    And print response
    And match response.args == {name:'Sherlock'}
  
  Scenario: get with more params
    Given path "/get"
    And params {name:'Sherlock',occupation:'detective'}
    When method get
    Then status 200
    And print response
    And match response.args == {name:'Sherlock',occupation:'detective'}
  
  Scenario: get with reuseable feature
    Given def testdata =  {name:'Tony Stark',knownAs:'Iron man'}
    And def inputdata = {'params':''}
    And set inputdata.params = testdata
    When def getService = call read('classpath:reusable/httpbinGetService.feature') inputdata
    Then match getService.response.args == testdata
    
    