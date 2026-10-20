extends Node

signal score_changed(score: int)
signal game_over(won: bool)

const COINS_TO_WIN := 5
var score := 0
var playing := true


func add_point() -> void:
	score += 1
	score_changed.emit(score)
	if score >= COINS_TO_WIN:
		finish(true)


func finish(won: bool) -> void:
	if not playing:
		return
	playing = false
	game_over.emit(won)
