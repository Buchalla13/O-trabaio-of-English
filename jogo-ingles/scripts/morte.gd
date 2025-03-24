extends Area2D



var esquerdaOuDireita= randi_range(0,1)
var velocidade = 0
func _ready() -> void:
	if self.name!='parede1':
		if esquerdaOuDireita==0:
			self.position.x=-129
		else:
			self.position.x=42
func _physics_process(delta: float) -> void:
	velocidade+=0.007
	self.position.y+=velocidade
func _on_body_entered(body):
	body.handle_danger()
