extends "res://commonCustomRB2d.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const MIN_ROTATION=-2.025 #RADIANS
#const MAX_ROTATION=126 #RADIANS
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
func constrainRotation():
	var offsetRot=self.rotation+rotationOffsetAmm
	if offsetRot<MIN_ROTATION:
		shouldConstrain=true
	else:
		shouldConstrain=false
		
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
