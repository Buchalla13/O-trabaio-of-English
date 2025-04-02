extends AnimatedSprite2D
@onready var label = $"../../muro/Label"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if label.text=='cat':
		frame=0
	if label.text=='tiger':
		frame=1
		scale.x*=0.8
	if label.text=='person':
		frame=2
		scale.x*=3.8
		scale.y*=5
	if label.text=='armadillo':
		frame=3
		scale.x*=2
		scale.y*=3
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
