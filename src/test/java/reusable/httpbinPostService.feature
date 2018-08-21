#Author: Babu Sekaran
#Keywords Summary : Feature to test httpbin /get behaviour

@tag
Feature: test httpbin /post behaviour 

	Background: Default needs to load for every scenario
		* url baseUrl
		* def inputData = {params:'#(params)',payload:'#(payload)'}

  Scenario: get with with given params
    Given path "/post"
    And params inputData.params
    And request inputData.payload
    When method post
    Then status 200
  