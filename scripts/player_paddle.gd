extends CharacterBody2D


const SPEED = 350.0

func _physics_process(delta: float) -> void:

	var direction := Input.get_axis("ui_up", "ui_down")
	
	if (global_position.y < -304 and direction == -1):
		direction = 0
		
	if (global_position.y > 304 and direction == 1):
		direction = 0

	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	

	move_and_slide()
