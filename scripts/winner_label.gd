extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(576, 324) - size / 2
	text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Global.playerWon == true):
		text = "Player Wins!"
		position = Vector2(576, 324) - size / 2
	else:
		text = "Computer Wins!"
		position = Vector2(576, 324) - size / 2
