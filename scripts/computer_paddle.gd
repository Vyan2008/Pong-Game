extends CharacterBody2D


const SPEED = 350.0
@onready var ball = %Ball
func _physics_process(delta: float) -> void:
	
	velocity.y = abs(ball.velocity.y - 3)
	# makes the computer paddle follow the ball
	# by giving it a slightly different magnitude of y velocity
	# in order to make it possible for it to miss
	if (ball.velocity.y < 0):
		velocity.y*= -1
	# makes the sign of the computer paddle's y velocity 
	# the same as the ball's so it follows it correctly
	move_and_slide()
