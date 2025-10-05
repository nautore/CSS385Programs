extends Node2D

var enemy_scene_1 = preload("res://scenes/enemy.tscn")
var enemy_scene_2 = preload("res://scenes/enemy2.tscn")

@onready var player = $Player

func _on_timer_timeout() -> void:
	var enemy = enemy_scene_1.instantiate()
	var enemy2 = enemy_scene_2.instantiate()
	enemy.global_position = player.global_position
	enemy2.global_position = player.global_position
	
	while enemy.global_position.distance_squared_to(player.global_position) < 200000:
		enemy.global_position.x = randi_range(0, get_viewport_rect().size.x)
		enemy.global_position.y = randi_range(0, get_viewport_rect().size.y)
	while enemy2.global_position.distance_squared_to(player.global_position) < 200000:
		enemy2.global_position.x = randi_range(0, get_viewport_rect().size.x)
		enemy2.global_position.y = randi_range(0, get_viewport_rect().size.y)
		
	add_child(enemy)
	add_child(enemy2)
