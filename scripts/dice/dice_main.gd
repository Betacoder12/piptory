extends Node2D

var atlas : AtlasTexture

@export_file("*.png") var DiceSheet : String

func _ready() -> void:
	var dice_atlas = AtlasTexture.new()
	var dice_image = Image.new()
	dice_image.load(DiceSheet)
	var dice_texture = ImageTexture.create_from_image(dice_image)
	dice_atlas.atlas = dice_texture
	
	var dice_textures := []
	
	for y in dice_image.get_height() / 16:
		for x in dice_image.get_width() / 16:
			var mini_atlas = dice_atlas.duplicate()
			mini_atlas.region = Rect2(Vector2(x * 16, y * 16), Vector2(16, 16))
			dice_textures.append(mini_atlas)
	
	var dice = Sprite2D.new()
	dice.texture = dice_textures[2]
	dice.texture_filter = Sprite2D.TEXTURE_FILTER_NEAREST
	add_child(dice)
