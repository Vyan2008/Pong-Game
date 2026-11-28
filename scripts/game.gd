extends Node2D

@onready var computerPaddle = %"Computer Paddle"
@onready var playerPaddle = %"Player Paddle"
@onready var ball = %Ball

func _ready() -> void:
	Global.playerWon = false
	computerPaddle.global_position = Vector2(0, 0)
	computerPaddle.velocity = Vector2(0, 0)
	playerPaddle.global_position = Vector2(0, 0)
	playerPaddle.velocity = Vector2(0, 0)
	ball.global_position = Vector2(0, 0)
	ball.velocity = Vector2(0, 0)
	
	# initializes the starting positions and values of 
	# all objects in the scene whenever the game scene is 
	# loaded in so that the game can be replayed when 
	# additional features are added in the future.
