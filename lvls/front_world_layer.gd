@tool
extends TileMapLayer

signal changed2

@export var tool_enabled := true

func _process(delta: float) -> void:
	if !tool_enabled : return
	changed2.emit()
