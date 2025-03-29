class_name general_button
extends Button

@export var image : Texture2D

@export_category("interior")
@export var button_image : TextureRect

func _ready() -> void:
	button_image.texture = image
