extends Node

var ongoingGame = true
var gameOn = false
var playerScore = 0
var computerScore = 0
var speed = 300
var playerWon = false

# declares and intializes several variables,
# such as playerScore and speed, which need to be global
# so that they can be accessed by the attached scripts of 
# all objects.

func _process(delta: float) -> void:
	if (Global.playerScore == 10 || Global.computerScore == 10):
		if (playerScore == 10):
			playerWon = true
		Global.ongoingGame = false
		Global.playerScore = 0
		Global.computerScore = 0
		get_tree().change_scene_to_file("res://scenes/winner_screen.tscn")
	# ends the game if there is a winner, resets the scores,
	# and uses the playerWon boolean variable to store the 
	# winner. 
		
