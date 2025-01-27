extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var horizontalDirection := Input.get_axis("ui_left", "ui_right")
	if horizontalDirection:
		velocity.x = horizontalDirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var verticalDirection := Input.get_axis("ui_up", "ui_down")
	if verticalDirection:
		velocity.y = verticalDirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	move_and_slide()
