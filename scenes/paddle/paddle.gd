extends Area2D


const SPEED: float = 500.0
@onready var sprite_2d: Sprite2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Paddle:: _ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("move_left"):
	#	position.x -= SPEED * delta
	#if Input.is_action_pressed("move_right"):
	#	position.x += SPEED * delta
	
	var movement: float = Input.get_axis("move_left", "move_right")
	position.x += SPEED * delta * movement
	
	position.x = clampf(position.x, get_viewport_rect().position.x + sprite_2d.texture.get_width()/2.0, get_viewport_rect().end.x - sprite_2d.texture.get_width()/2.0)


func _on_area_entered(area: Area2D) -> void:
	print("_on_area_entered from Paddle Definition: ", area)
