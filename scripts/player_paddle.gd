extends CharacterBody2D


const SPEED = 350.0
@onready var ball = %Ball
func _physics_process(delta: float) -> void:
	if (Global.ongoingGame == true): # ensures paddle only moves while a round is ongoing
		var direction := Input.get_axis("ui_up", "ui_down")
		# records if the input press is up (-1) or down (1) so the paddle can move accordingly
		if ((direction == -1 or direction == 1) and Global.gameOn == false):
			#starts round and moves ball at first input of a round
			Global.gameOn = true
			Global.speed = 300
			ball.velocity.x = 300
		if (global_position.y < -304 and direction == -1):
			direction = 0
		
		if (global_position.y > 304 and direction == 1):
			direction = 0
		# limits player paddle movement so it cannot go out of bounds
		if direction:
			velocity.y = direction * SPEED
			
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)
		# makes the paddle have a y velocity that matches the intended direction 
		# based on input or has the paddle's y velocity go to 0 if no input is being pressed
		# so that the paddle stops when no key is pressed
	move_and_slide()
