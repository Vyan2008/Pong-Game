extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(576, 324) - size / 2
	# centers the label on the screen no matter how long the text is
	text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Global.playerWon == true):
		text = "Player Wins!"
		position = Vector2(576, 324) - size / 2
	else:
		text = "Computer Wins!"
		position = Vector2(576, 324) - size / 2
	# updates winner label to accurately display who won
