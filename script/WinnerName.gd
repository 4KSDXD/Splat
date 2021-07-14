extends Label
var username

func _ready():
	if OS.has_environment("USERNAME"):
		username = OS.get_environment("USERNAME")
	else:
		username = "Player"
	text = username
