extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var scene = preload("res://Cube.tscn");
	var format_string = "x: %s, y: %s, z: %s."
	

	for i in range(3):
		var cube = scene.instance()
		var cubeRoot = cube.get_root()
		var t = cube.get_transform()
		var actual_string = format_string % [t.x, t.y, t.z]
		print(actual_string)
		
		
    	#t.origin += Vector3(delta,0,0)
    	#set_transform(t)

#var t = Transform()
#pos = t.xform(pos) # transform 3D position
#pos = t.basis.xform(pos) # (only rotate)
#pos = t.origin + pos # (only translate)		
		
		#cube.set_global_transform(Transform(spatialNode.get_global_transform().basis,vector3Position))
		#add_child(cube)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
