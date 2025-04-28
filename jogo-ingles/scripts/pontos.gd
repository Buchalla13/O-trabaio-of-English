extends Label
var pontos=0


func _on_morte_1_body_entered(body: Node2D) -> void:
	if body.name=='submundo':
		pontos+=1

func _physics_process(delta: float) -> void:
	text='Pontos:'+str(pontos)
