extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var eventStr
var ctrlVelo

#nodeName(relative to playerRoot/RBs if doesnt contain. else format is:
		#nodeName.DictKey 
var constrainRotationStr  

# vect used for constraining rotation that other nodes dont use
var myConstrainRotationVect 

# vect or vectDict used for constraining rotation that other nodes do use
var ConstrainRotationResource 
var phyState

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	self.linear_damp
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _integrate_forces(state):
	phyState=state
	controlFunc()
	constrainRotation()
func controlFunc():
	if Input.is_action_pressed(eventStr):
		#state.apply_torque_impulse(-1)
		phyState.angular_velocity=ctrlVelo
		
	else:
		phyState.angular_velocity+=0
func constrainRotation():
	pass
