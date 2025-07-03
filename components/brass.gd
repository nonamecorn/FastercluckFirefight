extends RigidBody2D

func _ready():
	apply_impulse(Vector2(-500, 0).rotated(global_rotation))

func _on_timer_timeout() -> void:
	queue_free()
