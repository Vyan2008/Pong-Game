extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(576, 150) - size / 2
	text = "0 | 0"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = str(Global.computerScore) + " | " + str(Global.playerScore)
