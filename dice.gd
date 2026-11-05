extends Node2D

var atlas : AtlasTexture

@export var DiceSheet : Image

func _ready() -> void:
	var dice_atlas = AtlasTexture.new()
	var dice_texture = ImageTexture.create_from_image(DiceSheet)
	dice_atlas.atlas = dice_texture

	var dice_textures = []
	
	
	var dice = Sprite2D.new()
	dice.texture = dice_textures[0]  # Set the initial texture for the dice sprite
	add_child(dice)
