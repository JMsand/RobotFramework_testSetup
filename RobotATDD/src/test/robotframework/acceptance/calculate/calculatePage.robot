*** Settings ***
Library	Selenium2Library
Library	FancyLib
Test Setup	Open Browser	http://localhost:8080/calculate	ff
Test Teardown	Close Browser

*** Test Cases ***
The calculate page has a correct header
	[Tags]	calculate	header	title
	Given I am on the calculate page
	Then the title I see should be "Calculate a value"
	And I should see a header with the text "Calculate a value using operators"

You can calculate a value using the add operator
	[Tags]	calculate	input	result
	Given I am on the calculate page
	When I add 4
	Then I should see a result with the value 4
	When I add 4
	Then I should see a result with the value 8

*** Keywords ***
And I should see a header with the text "${header}"
   Element Should Contain	calculateHeader	 ${header}

Given I am on the calculate page
   Location Should Contain	/calculate

When I add ${value}
	Input Text 	input	${value}
	Click Button 	addButton
	Is This Fancy	${value}

Then the title I see should be "${title}"
   Title Should Be	${title}

Then I should see a result with the value ${value}
    Element Should Contain	result	${value}

