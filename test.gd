extends Node2D


var scene = preload("res://board.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nodeboard = scene.instance()



# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(nodeboard)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
