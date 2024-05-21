extends RigidBody2D

var impulse_strength = 58

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var angle = rotation
	
	

	if Input.is_action_pressed("right_move"):
		impulse_strength = 58
		apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)
		#apply_central_impulse(Vector2(10,0))
	elif Input.is_action_pressed("left_move"):
		impulse_strength = 58
		apply_central_impulse(Vector2(cos(angle), sin(angle)) * -impulse_strength)
	else:
		impulse_strength = 0
	pass
