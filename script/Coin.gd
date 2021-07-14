extends Area2D

signal coins_collected

func _on_Coin_body_entered(body):
	$AnimationPlayer.play("animation_bounce")
	$CoinSoundCollected.play()
	emit_signal("coins_collected")
	set_collision_mask_bit(0, false)

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
