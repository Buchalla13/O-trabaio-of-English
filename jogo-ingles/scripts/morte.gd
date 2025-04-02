extends Area2D

@export var esquerdaOuDireita = randi_range(0,1)

var velocidade = 0
func _ready() -> void:
	if self.name!='muro':
		if esquerdaOuDireita==0:
			self.position.x=-129
		else:
			self.position.x=120
func _physics_process(delta: float) -> void:
	self.position.y+=velocidade
	self.velocidade+=0.005
func _on_body_entered(body):
	print(body.name)
	if body.name=="player":
		body.handle_danger()
	if body.name=='submundo':
		self.position.y=-200
