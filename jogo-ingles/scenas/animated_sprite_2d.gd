extends AnimatedSprite2D
@onready var label = $"../../parede1/Label"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if label.text=='cat':
		frame=0
	if label.text=='truck':
		frame=1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
