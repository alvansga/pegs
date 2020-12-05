extends Node2D

export (PackedScene) var Ball

var scene = preload("res://board.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nodeboard = scene.instance()
nodeboard.position = Vector2(222,222)


# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(nodeboard)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
