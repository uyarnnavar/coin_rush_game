extends CharacterBody2D

@export var speed := 140.0


func _physics_process(_delta: float) -> void:
	var dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = dir * speed if GameState.playing else Vector2.ZERO

	move_and_slide()
