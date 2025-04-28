extends AnimatedSprite2D
@onready var timer=$Timer
func _ready() -> void:
	timer.start()
	
func _on_timer_timeout() -> void:
	frame+=1
	timer.start()
