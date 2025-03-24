extends Area2D
@onready var morte = $"../morte1/CollisionShape2D"



func _ready() -> void:
	if morte.position.x>0:
		self.position.x=81
	else:
		self.position.x=-129
var velocidade = 0
func _physics_process(delta: float) -> void:
	velocidade+=0.007
	self.position.y+=velocidade
	
