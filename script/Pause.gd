extends Control

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true

func _on_Continue_pressed():
	hide()
	get_tree().paused = false

func _on_Exit_pressed():
	hide()
	get_tree().paused = false
	get_tree().change_scene("res://scene//TitleScreen.tscn")
 
