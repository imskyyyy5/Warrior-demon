extends Node2D

@onready var themed_timer = $ThemedTimer

var garlic_collected = 0

func _ready() -> void:
	await themed_timer.Timer(10.0)
	get_tree().paused = true



func _process(delta: float) -> void:
	if garlic_collected == 2:
		get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")

func garlic_collect() -> void:
	garlic_collected += 1
