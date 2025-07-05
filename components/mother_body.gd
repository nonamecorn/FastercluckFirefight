extends CharacterBody2D

class_name Entity

@export var MAX_SPEED = 100
@export var ACCELERATION = 700
@export var MAX_HP : float = 100
@export var group : String = "None"
var hp = MAX_HP
var flipped = false

func flip():
	flipped = !flipped
	$BodySprite.scale.x *= -1

func _on_hitbox_damaged(damage: float) -> void:
	hp -= damage
	if hp <= 0:
		$FSM.force_transition("Dead")
