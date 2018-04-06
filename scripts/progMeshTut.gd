extends ImmediateGeometry

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	self.begin(VisualServer.PRIMITIVE_TRIANGLES, null)
	self.add_vertex(Vector3(0,2,0))
	self.add_vertex(Vector3(2,0,0))
	self.add_vertex(Vector3(-2,0,0))
	self.end()
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
