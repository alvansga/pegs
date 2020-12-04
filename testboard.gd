extends Node

var scene = preload("res://board.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nodeboard = scene.instance()



# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(nodeboard)
#	$nodeboard.set_position($nodeboard.get_position() + Vector2(66,66) ) 
	 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
