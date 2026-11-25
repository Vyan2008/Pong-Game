extends Node

var ongoingGame = true
var gameOn = false
var playerScore = 0
var computerScore = 0
var speed = 300
var playerWon = false

@onready var computerPaddle = %"Computer Paddle"
@onready var playerPaddle = %"Player Paddle"
@onready var ball = %Ball

func _process(delta: float) -> void:
	if (Global.playerScore == 5 || Global.computerScore == 5):
		if (playerScore == 5):
			playerWon = true
		Global.ongoingGame = false
		Global.playerScore = 0
		Global.computerScore = 0
		get_tree().change_scene_to_file("res://winner_screen.tscn")
		
