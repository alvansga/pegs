extends Node

var scene = preload("res://board.tscn")
var pegscene = preload("res://pegs.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var nodeboard = []
	var BoxLenX = scene.instance().get_node("CollisionShape2D").shape.extents.x * 2
	var BoxLenY = scene.instance().get_node("CollisionShape2D").shape.extents.y * 2
	var SumBoxX = 7
	var SumBoxY = 7
	var LenWinX = get_viewport().size.x
	var LenWinY = get_viewport().size.y
	
	print(LenWinX)
	print(SumBoxX)
	print(BoxLenX)
#	var BoardXStart = 60
#	var BoardYStart = 60
	var BoardXStart = (LenWinX - (SumBoxX * (BoxLenX)))/2
	var BoardYStart = (LenWinY - (SumBoxY * (BoxLenY)))
	
	print("X margin: " + str(BoardXStart))
	print("Y margin: " + str(BoardYStart))
# -------------------------------------------
#	nodeboard.append(scene.instance())
#	var idx=0
#	nodeboard[idx].position = Vector2(BoardXStart+(BoxLenX*0)-BoxLenX,BoardYStart+(BoxLenY*0)-BoxLenY)
#	add_child(nodeboard[idx])
#	nodeboard.append(scene.instance())
#	nodeboard[1].position = Vector2(BoardXStart+(BoxLenX*7)-BoxLenX,BoardYStart+(BoxLenY*7)-BoxLenY)
#	add_child(nodeboard[1])
#	nodeboard.append(scene.instance())
#	nodeboard[2].position = Vector2(BoardXStart+(BoxLenX*0)-BoxLenX/2,BoardYStart+(BoxLenY*7)-BoxLenY/2)
#	add_child(nodeboard[2])
#	nodeboard.append(scene.instance())
#	nodeboard[3].position = Vector2(BoardXStart+(BoxLenX*6)-BoxLenX/2,BoardYStart+(BoxLenY*7)-BoxLenY/2)
#	add_child(nodeboard[3])
# --------------------------------------------
	var idx=0
	var coo=[]
	for i in range(SumBoxX):
		for j in range(SumBoxY):
#			print(i)
			nodeboard.append(scene.instance())
			nodeboard[idx].position = Vector2(BoardXStart+(BoxLenX*i),BoardYStart+(BoxLenY*j))
#			print(BoardXStart+(BoxLenX*i))
			coo.append(Vector2(BoardXStart+(BoxLenX*i),BoardYStart+(BoxLenY*j)))
			
			add_child(nodeboard[idx])
			idx+=1
	print(idx)
#	--------------------------------------------
#	nodeboard.append(scene.instance())
#	nodeboard[0].position = Vector2(BoardXStart,BoardYStart)
	
#	nodeboard[0].get_node("CollisionShape2D").shape.extents

#	add_child(nodeboard[0])
#	nodeboard[1].position = Vector2(BoardXStart+BoxLenX*1,BoardYStart)
#	add_child(nodeboard[1])
#	nodeboard[2].position = Vector2(BoardXStart+BoxLenX*2,BoardYStart)
#	add_child(nodeboard[2])
	
	var onepeg = [pegscene.instance()]
	onepeg[0].position=Vector2(coo[12])
	onepeg[0].get_node(".").input_pickable = true
	add_child(onepeg[0])
	
	onepeg.append(pegscene.instance())
	onepeg[1].position=Vector2(coo[11])
	onepeg[1].get_node(".").input_pickable = true
	add_child(onepeg[1])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
