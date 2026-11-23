extends CharacterBody2D


var speed = 300.0
const ACC = 50
var velocityB = 0

func _ready():
	velocity = Vector2(300, 0)
func _physics_process(delta: float) -> void:
	velocityB = velocity
	move_and_slide()
	if (get_slide_collision_count() > 0) :	
		speed += ACC
		velocity = velocityB.bounce(get_slide_collision(0)
		.get_normal())
		velocity.y = (global_position.y 
		- get_slide_collision(0).get_collider().global_position.y) * 10
		velocity = velocity.normalized() * speed
	if ((global_position.y < -314 and velocity.y < 0) or (global_position.y > 314 and velocity.y > 0)) :
		velocity.y *= -1
		
