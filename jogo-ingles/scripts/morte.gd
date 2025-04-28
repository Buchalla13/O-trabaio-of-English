extends Area2D
var velocidade = 0
@export var esquerdaOuDireita = randi_range(0,1)

func inicio():
	esquerdaOuDireita = randi_range(0,1)
	if self.name!='muro':
		if esquerdaOuDireita==0:
			self.position.x=-129
		else:
			self.position.x=120

	
	self.velocidade+=.2

func _ready() -> void:
	inicio()

func _physics_process(delta: float) -> void:
	self.position.y+=velocidade

	
func _on_body_entered(body):
	
	print(body.name)
	
	if body.name=="player" or body.name=='player2':
		body.handle_danger()
	
	if body.name=='submundo':
		self.position.y=-200
		inicio()
