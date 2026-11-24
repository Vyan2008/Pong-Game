extends CharacterBody2D


const SPEED = 350.0
@onready var ball = %Ball
func _physics_process(delta: float) -> void:
	
	velocity.y = abs(ball.velocity.y - 5)
	if (ball.velocity.y < 0):
		velocity.y*= -1
	move_and_slide()
