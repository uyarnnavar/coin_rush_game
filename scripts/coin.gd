
extends Area2D


func _on_body_entered(_body: Node2D) -> void:
	GameState.add_point()
	$AudioStreamPlayer.play()
	$Timer.start(0.4)
	hide()
	
	


func _on_timer_timeout() -> void:
	queue_free()
