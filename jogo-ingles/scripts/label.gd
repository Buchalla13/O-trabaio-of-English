extends Label
@export var nomes= ['cat','tiger','person','armadillo','squirrel','giraffe','macaw','crocodille','horse','donkey','dog','fish','penguin','bull','goat','llama','monkey','duck','platypus','rat','lion','ant','pig','shark','turtle','bear']
func inicio():
	var escolha=randi() %25
	text=nomes[escolha]
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	inicio()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_muro_body_entered(body: Node2D) -> void:
	if body.name=='submundo':
		inicio()
