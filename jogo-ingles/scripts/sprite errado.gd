extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	frame=randi() %2
	if frame==1:
		self.scale.x*=7
		self.scale.y*=10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if frame==2:
		scale*=10
