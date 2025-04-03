extends Area2D
@onready var morte =$"../morte1"
var velocidade = 0
func inicio():
	if morte.esquerdaOuDireita>0:
		self.position.x= -180
	else:
		self.position.x= 80
func _ready() -> void:
	inicio()
func _physics_process(delta: float) -> void:
	velocidade+=0.005
	self.position.y+=velocidade
	inicio()

func _on_body_entered(body: Node2D) -> void:
	if body.name=='submundo':
		self.position.y=-200
