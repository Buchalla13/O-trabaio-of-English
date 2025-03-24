extends Label

var nomes = ['cat','truck',]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var escolha=randi() %2
	text=nomes[escolha]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
