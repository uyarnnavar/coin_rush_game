extends Area2D
@export var distance := 120.0
@export var speed := 1.5
var _time := 0.0
var _origin := Vector2.ZERO


func _ready() -> void:
	_origin = position


func _physics_process(delta: float) -> void:
	_time += delta
	position.x = _origin.x + sin(_time * speed) * distance


# STEP 1: replace this file with the code from the guide.
func _on_body_entered(_body: Node2D) -> void:
	GameState.finish(false)
