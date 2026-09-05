extends Node2D

@onready var timer: RichTextLabel = $timer

var time: float

func _process(_delta: float) -> void:
	timer.text = str(snapped(time, 0.10))

func Timer(start_time: float) -> void:
	time = start_time

	while time > 0.0:
		await get_tree().create_timer(0.1).timeout
		time = max(time - 0.1, 0.0)
