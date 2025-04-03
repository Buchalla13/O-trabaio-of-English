extends Label
func inicio():
	var escolha=randi() %4
	text=nomes[escolha]
	
var nomes = ['cat','tiger','person','armadillo']
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	inicio()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_muro_body_entered(body: Node2D) -> void:
	if body.name=='submundo':
		inicio()
