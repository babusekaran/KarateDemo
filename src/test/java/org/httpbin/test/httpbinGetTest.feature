#Author: Babu Sekaran
#Keywords Summary : Feature to test httpbin /get behaviour

@parallel=false
Feature: test httpbin /get behaviour 

	Background: Default needs to load for every scenario
		* url baseUrl

	Scenario Outline: test <paramValue>
	* path '/get'
		Given params { <paramName>: <paramValue> }
	 When method get
	 Then status 200
	 Examples:
	   | paramName | paramValue |                                                                                                                                                                                                                                                 
	   | 'Hybrid'       |  'BMW' |
	   | 'EMV'       |  'test data'|
	   
	Scenario: Get call with param in URL
	* url 'http://httpbin.org/get?Name=Volvo'
	 When method get
	 Then status 200

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
    And def inputdata = {'params':'#(testdata)'}
    * def inputDataArray = [{ "params": {"name": "Tony Stark","knownAs": "Iron man"}},{ "params": {"name": "Bruce Wayne","knownAs": "Bat man"}}]
    When def getService = call HttpBin.getService inputdata
    * print getService
    Then match getService.response.args == testdata
    
    