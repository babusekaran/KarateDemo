#Author: Babu Sekaran
#Keywords Summary : Feature to test httpbin /get behaviour

@tag
Feature: test httpbin /get behaviour 

	Background: Default needs to load for every scenario
		* url baseUrl
		* def inputData = {params:'#(params)'}

  Scenario: get with with given params
    Given path "/get"
    And params inputData.params
    When method get
    Then status 200
    And def getResponse = response
  