extends CharacterBody2D

const ACC = 100
var velocityB = 0
@onready var computerPaddle = %"Computer Paddle"
@onready var playerPaddle = %"Player Paddle"
func _physics_process(delta: float) -> void:
	velocityB = velocity
	move_and_slide()
	if (get_slide_collision_count() > 0) :	
		Global.speed += ACC
		velocity = velocityB.bounce(get_slide_collision(0)
		.get_normal())
		velocity.y = (global_position.y 
		- get_slide_collision(0).get_collider().global_position.y) * 10
		velocity = velocity.normalized() * Global.speed
	if ((global_position.y < -314 and velocity.y < 0) or (global_position.y > 314 and velocity.y > 0)) :
		velocity.y *= -1
	if (global_position.x < -576 or global_position.x > 576):
		if (global_position.x < -576):
			Global.playerScore += 1
		else:
			Global.computerScore += 1
		velocity.x = 0
		velocity.y = 0
		global_position.x = 0
		global_position.y = 0
		computerPaddle.velocity.y = 0
		computerPaddle.global_position.y = 0
		playerPaddle.velocity.y = 0
		playerPaddle.global_position.y = 0
		Global.gameOn = false
