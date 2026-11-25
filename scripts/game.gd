extends Node2D

@onready var computerPaddle = %"Computer Paddle"
@onready var playerPaddle = %"Player Paddle"
@onready var ball = %Ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.playerWon = false
	computerPaddle.global_position = Vector2(0, 0)
	computerPaddle.velocity = Vector2(0, 0)
	playerPaddle.global_position = Vector2(0, 0)
	playerPaddle.velocity = Vector2(0, 0)
	ball.global_position = Vector2(0, 0)
	ball.velocity = Vector2(0, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
