class_name Belt
extends AnimatedSprite2D

var belt_in_hand : bool
var belt_frame : int
var timer : Timer
@export_file("*.tres", "*.res") var belt_frames : String

func _ready() -> void:
	timer = Timer.new()
	belt_frame = 0
	timer.wait_time = 0.2
	add_child(timer)
	timer.timeout.connect(_on_timeout)
	timer.start()

func _on_timeout():
	if belt_frame < 15:
		belt_frame += 1
	else:
		belt_frame = 0

func _input(event) -> void:
	if event.is_action_pressed("test_place"):
		var belt = AnimatedSprite2D.new()
		var frames = SpriteFrames.new()
		frames.resource_path = belt_frames
		frames.resource_name = "belt frames"
		belt.sprite_frames = frames
		add_child(belt)
		belt.play()
