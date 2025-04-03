extends Polygon2D
@onready var timer = $Timer
@onready var player = $"../player"

func _ready() -> void:
	self.visible=false





func _on_timer_timeout() -> void:
	self.visible=true


func _on_morte_1_body_entered(body: Node2D) -> void:
	if player.morto==true:
		timer.start()
		
	


func _on_muro_body_entered(body: Node2D) -> void:
	if player.morto==true:
		timer.start()
