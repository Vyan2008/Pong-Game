extends Label

func _ready() -> void:
	position = Vector2(576, 150) - size / 2
	# position of label is set to center of screen minus half of the label's size
	# since position values of the label apply to the top left of it
	text = "0 | 0"

func _process(delta: float) -> void:
	text = str(Global.computerScore) + " | " + str(Global.playerScore)
	# constantly updates label with the correct score so player can see it
