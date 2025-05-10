extends Control
@onready var touch = $Touch
func _ready() -> void:
	if OS.get_name() == "Android" or OS.get_name() == "iOS":
		pass
	else:
		touch.hide()
