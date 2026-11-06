extends Node2D

@export_file("*.png") var belt_matrix : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var belt = AnimatedSprite2D.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
