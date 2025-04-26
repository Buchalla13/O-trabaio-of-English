extends AnimatedSprite2D

var tamanhoX = 0.182
# Called when the node enters the scene tree for the first time.
func incio():
	scale.x=tamanhoX
	frame=randi() %22
func _ready() -> void:
	incio()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_morte_1_body_entered(body: Node2D) -> void:
	if body.name=='submundo':
		incio()
