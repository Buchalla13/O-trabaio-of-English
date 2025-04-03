extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func incio():
	frame=randi() %2
	if frame==0:
		scale.x=0.04
		scale.y=0.011
	if frame==1:
		scale.x=0.26
		scale.y=0.128
func _ready() -> void:
	incio()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_morte_1_body_entered(body: Node2D) -> void:
	if body.name=='submundo':
		incio()
