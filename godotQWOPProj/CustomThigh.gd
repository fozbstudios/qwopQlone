extends "res://commonCustomRB2d.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var oppEventStr

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

		
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func controlFunc():
	.controlFunc()
	if Input.is_action_pressed(oppEventStr):
			#state.apply_torque_impulse(-1)
			phyState.angular_velocity=-ctrlVelo