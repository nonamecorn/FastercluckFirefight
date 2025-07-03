extends Node2D

class_name EntityHand

@export var cursor : Node2D

var flipped = false

func flip():
	get_parent().flip()
	flipped = !flipped
	scale.y *= -1

func _process(_delta: float) -> void:
	global_rotation = atan2(cursor.position.y, cursor.position.x)
	if cursor.position.x < 0 and !flipped:
		flip()
	if cursor.position.x >= 0 and flipped:
		flip()
