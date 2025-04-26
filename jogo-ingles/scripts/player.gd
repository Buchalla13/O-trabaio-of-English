class_name jogador
extends CharacterBody2D
@export var morto=false
const SPEED = 300.0
const JUMP_VELOCITY = -250.0
@onready var timer = $Timer
@onready var animatedSprite = $AnimatedSprite2D
@onready var som = $"explosao som"

func _ready() -> void:
	pass


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
	if self.morto!=true:
		if name=='player':
			if Input.is_action_just_pressed("pulo1") and is_on_floor():
				self.velocity.y = JUMP_VELOCITY
		else:
			if Input.is_action_just_pressed("pulo2") and is_on_floor():
				self.velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	if name=='player':
		var direction := Input.get_axis("esquerda1", "direita1")

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
			collision_mask=0
	if name=='player2':
		var direction := Input.get_axis("esquerda2", "direita2")

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
			collision_mask=0

	move_and_slide()


func _on_timer_timeout() -> void:
	animatedSprite.visible=false
