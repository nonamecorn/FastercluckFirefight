extends Node
signal inventory_changed

var inventory : Dictionary = {
	"items": [],
	"gun0": null,
	"gun0mods": [],
	"gun1": null,
	"gun1mods": [],
	"secondary": null,
	"helmet": null,
	"bodyarmor": null,
}

func deal_with_this_shit(item:Item,address:String) -> void:
	if item:
		pass
	inventory[address] = item
	inventory_changed.emit(inventory)

func clear_address(address:String):
	inventory[address] = null
	inventory_changed.emit(inventory)
