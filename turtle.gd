extends RigidBody2D

var impulse_strength = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var overlapping_mobs = %GroundCheck.get_overlapping_bodies()
	
	if overlapping_mobs.size() > 2:


		var angle = rotation
		
		%AnimatedSprite2D.set_speed_scale(linear_velocity.length()/1000)
		
		apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)
		if Input.is_action_pressed("right_move"):
			impulse_strength = 38
			
			
			#apply_central_impulse(Vector2(10,0))
		elif Input.is_action_pressed("left_move"):
			impulse_strength = -38

		else:
			impulse_strength = 0 
		
		print(linear_velocity.length()/700)
		
		if Input.is_action_pressed("speed_bump"):
			impulse_strength = 158
		pass
