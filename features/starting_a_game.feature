Feature: Starting the game
	In order to play Rock Paper Scissors
	As a nostalgic player
	I want to start the game

	Scenario: Registering
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		Then I should see "Make your choice Steph"

	Scenario: Blank name error
		Given I am on the homepage
		When I fill in "name" with ""
		When I press "Submit"
		Then I should see "Please enter a name"

	Scenario: Play again
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		When I follow "Rock"
		When I follow "Retry"
		Then I should see "Make your choice Steph"