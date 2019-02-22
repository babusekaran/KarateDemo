#Author: Babu Sekaran

Feature: Karate Data types

    Scenario: Data Types
    * def jsonData = {"Event": "Karate Meetup", "Location":"Bangalore"}
    * def jsonArrayData = [{"Event": "Karate Meetup I", "Location":"Bangalore"},{"Event": "Karate Meetup II", "Location":"Bangalore"}]
    * def xmlData = <root><Event>Karate Meetup</Event><Location>Bangalore</Location></root>
    * def jsData = function(){return "Hello Karate Champions!!!"}
    * def stringDate = "Welcome to Karate Meetup"
    * def listData = $jsonArrayData..Event
    * def mapData = JavaUtils.getMapData()
    * def number = 1234567890
    * def moreJSONdata = read("classpath:demo.json")
    
    Scenario: Get call with param in URL
		* url 'http://httpbin.org/get?Name=Volvo'
		 When method get
		 Then status 200


  
