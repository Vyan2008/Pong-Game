extends CharacterBody2D


const SPEED = 350.0
@onready var ball = %Ball
func _physics_process(delta: float) -> void:
	if (Global.ongoingGame == true):
		var direction := Input.get_axis("ui_up", "ui_down")
		if ((direction == -1 or direction == 1) and Global.gameOn == false):
			Global.gameOn = true
			Global.speed = 300
			ball.velocity.x = 300
		if (global_position.y < -304 and direction == -1):
			direction = 0
		
		if (global_position.y > 304 and direction == 1):
			direction = 0

		if direction:
			velocity.y = direction * SPEED
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()
