extends CanvasLayer

@onready var score_label: Label = $ScoreLabel
@onready var message: Label = $Message


func _ready() -> void:
	GameState.score_changed.connect(_on_score_changed)
	GameState.game_over.connect(_on_game_over)


func _on_score_changed(score: int) -> void:
	score_label.text = "Coins: " + str(score)


func _on_game_over(won: bool) -> void:
	message.text = "You win! Space to play again" if won else "Ouch! Space to retry"
	message.show()
