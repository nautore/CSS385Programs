extends Area2D

@onready var wall = $/root/Game/Wall
@onready var player = $/root/Game/Player

func _on_body_entered(body: Node2D) -> void:
	if(body == player) :
		if (wall != null):
			wall.queue_free()	
		queue_free()
