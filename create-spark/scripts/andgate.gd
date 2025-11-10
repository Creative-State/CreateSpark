extends Node2D

var dragging = false
var offset = Vector2(0,0)

var snap = 25

func _process(delta):
	if dragging:
		var newPos = get_global_mouse_position() - offset
		position = Vector2(snapped(newPos.x,snap),snapped(newPos.y,snap))
	
func _on_button_button_down() -> void:
	dragging = true
	offset = get_global_mouse_position() - global_position


func _on_button_button_up() -> void:
	dragging = false
