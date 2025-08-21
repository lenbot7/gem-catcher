@tool
extends EditorScript

func _run() -> void:
	print("\n---------")
	var hero: String = "Frodo"
	var age: int = 24
	print(hero)
	print(age)
	print(type_string((typeof(age))))
	print(type_string((typeof(hero))))
