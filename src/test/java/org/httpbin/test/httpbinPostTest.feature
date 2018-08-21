#Author: Babu Sekaran
#Keywords Summary : Feature to test httpbin /post behaviour

@tag
Feature: test httpbin /post behaviour 

	Background: Default needs to load for every scenario
		* url baseUrl

  Scenario: get with no params
    Given path "/post"
    And request {name:'Sherlock',occupation:'detective'}
    When method post
    Then status 200
    And print response
    And match response.args == {}
    And match response.data == '{"name":"Sherlock","occupation":"detective"}'
  
  Scenario Outline: Post with reuseable feature , examples with js
    Given def inputParams =  {}
    * set inputParams.name = <name>
    * set inputParams.day = <day>
    And def inputdata = {'params':{},'payload':{}}
    And set inputdata.params = inputParams
    When def postService = call HttpBin.postService inputdata
    Then match postService.response.args == inputParams
    * call MyUtility.wait 1
   Examples:
    |        day        |     name    |
    |MyUtility.getDay(0)|  "Iron Man" |
    |MyUtility.getDay(1)|    "Thor"   |
    |MyUtility.getDay(2)|    "Hulk"   |
    |MyUtility.getDay(3)|"Spider Man" |
    |MyUtility.getDay(4)| "Dr.Strange"|
    |MyUtility.getDay(5)|"Spider Man" |
    |MyUtility.getDay(6)|  "Ant Man"  |
  