extends CharacterBody2D

const ACC = 100
var velocityB = 0
@onready var computerPaddle = %"Computer Paddle"
@onready var playerPaddle = %"Player Paddle"
func _physics_process(delta: float) -> void:
	velocityB = velocity 
	# records the ball's velocity so that during a collision,
	# the velocity used will not be the one affected by Godot's 
	# own built in physics engine.
	move_and_slide()
	if (get_slide_collision_count() > 0) :	
		Global.speed += ACC
		velocity = velocityB.bounce(get_slide_collision(0)
		.get_normal())
		velocity.y = (global_position.y 
		- get_slide_collision(0).get_collider().global_position.y) * 10
		# uses the ball's position and paddle position offset
		# to determine the angle the ball launches off the paddle 
		# at by changing the ball's y velocity
		velocity = velocity.normalized() * Global.speed
		# normalizes ball's velocity so that its speed is not 
		# greater when it is moving at an angle
	if ((global_position.y < -314 and velocity.y < 0) or (global_position.y > 314 and velocity.y > 0)) :
		velocity.y *= -1
	# makes ball bounce off ceiling
	if (global_position.x < -576 or global_position.x > 576):
		if (global_position.x < -576):
			Global.playerScore += 1
		else:
			Global.computerScore += 1
		# awards point to computer or player depending on 
		# which side of the screen the ball went off of
		velocity.x = 0
		velocity.y = 0
		global_position.x = 0
		global_position.y = 0
		computerPaddle.velocity.y = 0
		computerPaddle.global_position.y = 0
		playerPaddle.velocity.y = 0
		playerPaddle.global_position.y = 0
		Global.gameOn = false
		# resets round after ball goes off screen
