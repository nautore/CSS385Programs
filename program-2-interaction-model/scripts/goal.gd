extends Area2D

@onready var player = $/root/Game/Player
@onready var win_label = $WinLabel

func _on_body_entered(body: Node2D) -> void:
	if(body == player):
		show_win_label()

func show_win_label():
	if win_label:
		win_label.visible = true
		get_tree().paused = true
