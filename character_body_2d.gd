extends CharacterBody2D
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = %AudioStreamPlayer2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Animations
	if velocity.x :
		sprite_2d.animation = "run"
	
	else:
		sprite_2d.animation = "default" 
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		sprite_2d.animation = "jump"
	
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		audio_stream_player_2d.jump()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		audio_stream_player_2d.run()
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		

	move_and_slide()
