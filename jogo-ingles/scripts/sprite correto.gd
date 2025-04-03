extends AnimatedSprite2D
@onready var label = $"../../muro/Label"
@onready var area = $".."
var tamanhoX = 0.182
var tamanhoY = 0.045
func inicio():
	if label.text=='cat':
		frame=0
		scale.x=tamanhoX
		scale.y=tamanhoY
	if label.text=='tiger':
		frame=1
		scale.x=0.8*tamanhoX
		scale.y=tamanhoY
	if label.text=='person':
		frame=2
		scale.x= 3.8*tamanhoX
		scale.y= 5*tamanhoY
	if label.text=='armadillo':
		frame=3
		scale.x= 2*tamanhoX
		scale.y= 3*tamanhoY
		
func _ready() -> void:
	inicio()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	inicio()
