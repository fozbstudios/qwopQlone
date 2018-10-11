extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

	
func _integrate_forces(state):
	if Input.is_action_just_pressed("leftThigh"):
		#state.apply_torque_impulse(-1)
		state.angular_velocity=-5