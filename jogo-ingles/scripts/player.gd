class_name player
extends CharacterBody2D
var morto=false
const SPEED = 150.0
const JUMP_VELOCITY = -200.0
@onready var timer = $Timer
@onready var animatedSprite = $AnimatedSprite2D
@onready var som = $"explosao som"
func handle_danger() -> void:
		animatedSprite.play("morte")
		som.play()
		morto=true
		timer.start()
		

func _physics_process(delta: float) -> void:

	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if morto!=true:
		if Input.is_action_just_pressed("pulo") and is_on_floor():
			velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("esquerda", "direita")

	if direction>0:
		animatedSprite.flip_h= false
	elif direction<0:
		animatedSprite.flip_h= true
	if morto != true:
		if direction:
			velocity.x = direction * SPEED
			animatedSprite.play("corrida")	
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			animatedSprite.play("idle")
	else:
		velocity.x=0

	move_and_slide()


func _on_timer_timeout() -> void:
	animatedSprite.visible=false
	
