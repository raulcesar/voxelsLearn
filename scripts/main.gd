extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var scene = preload("res://Cube.tscn");
	
	var times = 3
	for z in range(times):
		for y in range(times):
			for x in range(times):
				print(y)
				var pos = Vector3(x * 2.5, y * 2.5, z * 2.5)
				var cube = scene.instance() # get spatial
				var b = cube.global_transform.basis
				var format_string = "X: %s, y: %s"
				var actual_string = format_string %[pos.x, pos.y]
				print(actual_string)
				cube.translate(pos)
				add_child(cube)
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
