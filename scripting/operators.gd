@tool
extends EditorScript

func _run() -> void:
	print("\n---------")
	var orcs: int = 200
	var elves: int = 150
	var total_warriors: int = orcs + elves
	var orc_casualties: int = orcs - 50
	var elves_lost = elves / 4.0
	var total_arrows_needed: int = elves * 2
	
