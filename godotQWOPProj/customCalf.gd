extends "res://commonCustomRB2d.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var isMasterMoving
var masterVelo
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	shouldConstrain=false
	isMasterMoving=false
	self.connect(self.name.to_upper()[0]+"ThighSlave",self,"slaveMove")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func slaveMove(velo):
	isMasterMoving=true
	masterVelo=velo
func controlFunc():
	.controlFunc()
	if isMasterMoving:
		phyState.angular_velocity=masterVelo
		masterVelo=0#maybe not needed
		isMasterMoving=false