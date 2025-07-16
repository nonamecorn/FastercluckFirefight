extends Area2D

@export var pushForce:float = 1  

func _process(delta: float) -> void:
	var bodies = get_overlapping_bodies()
	bodies.erase(get_parent())
	for body in bodies:
		if body is CharacterBody2D:  
			body.velocity += global_position.direction_to(body.global_position) * pushForce 
