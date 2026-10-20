extends Node2D


func _ready() -> void:
	GameState.score = 0
	GameState.playing = true


func _input(event: InputEvent) -> void:
	if not GameState.playing and event.is_action_pressed("ui_accept"):
		get_tree().reload_current_scene()


# STEP 1: replace this file with the code from the guide.
