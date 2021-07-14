extends Button

func _on_PlayButton_pressed():
	$AudioStreamPlayer.play()
	get_tree().change_scene("res://scene/World.tscn")
