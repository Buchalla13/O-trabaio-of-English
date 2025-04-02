extends Area2D
@onready var morte =$"../morte1"
var velocidade = 0

func _ready() -> void:
	if morte.esquerdaOuDireita>0:
		self.position.x= -180
	else:
		self.position.x= 80
func _physics_process(delta: float) -> void:
	velocidade+=0.007
	self.position.y+=velocidade

func _on_body_entered(body: Node2D) -> void:
	if body.name=='submundo':
		self.position.y=-200
