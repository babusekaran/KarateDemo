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
  