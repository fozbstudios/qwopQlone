extends "res://CustomThigh.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	print(self.rotation)
	self.eventStr="leftThigh"
	self.oppEventStr="rightThigh"
	self.ctrlVelo=-5
	pass

	
