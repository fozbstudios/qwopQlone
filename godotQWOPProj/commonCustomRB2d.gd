extends RigidBody2D
signal RThighSlave(velo)
signal LThighSlave(velo)
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var eventStr
var ctrlVelo
const MIN_ROTATION=-2.025 #RADIANS
#const MAX_ROTATION=126 #RADIANS
#nodeName(relative to playerRoot/RBs if doesnt contain. else format is:
	#nodeName.DictKey 
var constrainRotationStr  
var shouldConstrain #bool used for constraining
# vect used for constraining rotation that other nodes dont use
var myConstrainRotationVect 

# vect or vectDict used for constraining rotation that other nodes do use
var ConstrainRotationResource 
var phyState

var rotationOffsetAmm #  radians, hack used to fix anomoly with rightThigh

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	rotationOffsetAmm=self.rotation-0
	shouldConstrain=false
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _integrate_forces(state):
	phyState=state
	controlFunc()
	if	shouldConstrain:
		phyState.angular_velocity=0
func controlFunc():
	phyState.angular_velocity=0
	if Input.is_action_pressed(eventStr):
		#state.apply_torque_impulse(-1)
		phyState.angular_velocity=ctrlVelo
		
#	else:
#		phyState.angular_velocity+=0


func _physics_process(delta):
	constrainRotation()
	
func constrainRotation():
	var offsetRot=self.rotation+rotationOffsetAmm
	if offsetRot<MIN_ROTATION:
		shouldConstrain=true
	else:
		shouldConstrain=false