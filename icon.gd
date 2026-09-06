extends Sprite2D

var velocity_y = 0
var gravity = 20
var jumping_power = -500
var floor = 400
var on_the_floor = true

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += 5

	if Input.is_action_pressed("ui_left"):
		position.x -= 5

	velocity_y += gravity
	position.y += velocity_y

	if position.y >= floor:
		position.y = floor
		velocity_y = 0
		on_the_floor = true
	else:
		on_the_floor = false
		
	if Input.is_action_just_pressed("ui_up") and on_the_floor:
		velocity_y = jumping_power
		on_the_floor = false
