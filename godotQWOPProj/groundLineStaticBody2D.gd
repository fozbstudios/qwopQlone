extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func reset(body):
#	print("hey1")
	if body.get_collision_layer_bit(0):
		print("hey")
		get_tree().reload_current_scene()


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	self.connect("body_entered" ,self,"reset") 
#	self.connect("body_shape_exited" ,self,"reset") 
#	self.connect("body_shape_entered" ,self,"reset") 
#	print(self.get_signal_connection_list("body_entered"))
func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	
	var arr=self.get_colliding_bodies()
#	print(arr.size())
	for item in arr:
#		if item.get_collision_layer_bit(0):
#			print("ya")
#		else:
##			print("yo")
#			pass
		pass
	
