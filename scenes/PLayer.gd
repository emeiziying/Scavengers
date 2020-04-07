extends Area2D

onready var ray: RayCast2D = $RayCast2D

var tile_size = 32
var inputs = {
	'ui_right': Vector2.RIGHT,
	'ui_left': Vector2.LEFT,
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
}


# Called when the node enters the scene tree for the first time.
func _ready():
	# position = position.snapped(Vector2.ONE * tile_size)
	# position += Vector2.ONE * tile_size / 2
	pass


func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)


func move(dir):
	var vector_pos = inputs[dir] * tile_size
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	if ! ray.is_colliding():
		position += inputs[dir] * tile_size
