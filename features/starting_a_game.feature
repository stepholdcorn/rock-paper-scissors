Feature: Starting the game
	In order to play Rock Paper Scissors
	As a nostalgic player
	I want to start the game

	Scenario: Registering
		Given I have entered my name
		Then I should see "Welcome to the game Steph"

	Scenario: Blank name error
		Given I have entered an invalid name
		Then I should see "Please enter a name"

	Scenario: Error link back to homepage
		Given I have entered an invalid name
		When I follow "Home"
		Then I should see "Rock Paper Scissors"

	Scenario: Choosing the single game mode 
		Given I have signed up for single player
		Then I should see "Make your choice Steph"

	Scenario: Play again single
		Given I have signed up for single player
		When I follow "Rock"
		When I follow "Retry"
		Then I should see "Make your choice Steph"
