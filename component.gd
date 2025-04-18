class_name Component
extends Sprite2D

enum COLORS {COLOR_RED, COLOR_GREEN, COLOR_BLUE, COLOR_WHITE, COLOR_GOLD, COLOR_GRAY, COLOR_BLACK, COLOR_YELLOW, COLOR_WEBPURPLE, COLOR_VIOLETRED, COLOR_VIOLET, COLOR_TEAL, COLOR_SKYBLUE, COLOR_SILVER, COLOR_ROSE, COLOR_REBECCAPURPLE, COLOR_PURPLE, COLOR_ORCHID, COLOR_ORANGE, COLOR_OCEANGREEN, COLOR_MISTYROSE, COLOR_MAROON, COLOR_MAGENTA, COLOR_LEAFGREEN, COLOR_INDIGO, COLOR_FUSCIA, COLOR_CYAN}

var is_dragging: bool
var _offset: Vector2
var _z_index: int

func _unhandled_input(event: InputEvent) -> void:
	#delete component if right clicked/long pressed
	if event is InputEventMouseButton and event.pressed and event.button_index == 2:
		if get_rect().has_point(to_local(event.position)):
			#queue_free()
			if modulate.a8 == 255:
				modulate.a8 = 128
			else:
				modulate.a8 = 255
			return
	
	#ignore these events
	if event is InputEventMouseButton or event is InputEventMouseMotion or event is InputEventKey:
		return
		
	#only process if clicking on tile
	if (event is InputEventScreenTouch or event is InputEventScreenDrag) and !get_rect().has_point(to_local(event.position)):
			return
			
	#when the draggable sprite is touched
	if event is InputEventScreenTouch and event.pressed:
		if is_dragging:
			return
		
		#if touching the tile
		if get_rect().has_point(to_local(event.position)):
			_offset = position - event.position
			global_position = event.position
			is_dragging = true
		
		_z_index = _z_index + 1
	elif event is InputEventScreenTouch and !event.pressed:
		#if not clicking on sprite return
		#if !get_rect().has_point(event.position):
		#	return
		is_dragging = false
		_z_index = _z_index - 1
		scale = Vector2(0.75,0.75)
		queue_redraw()
	#when the touch screen pressed and dragged or the mouse is clicked and dragged
	elif event is InputEventScreenDrag:
		#if clicking the tile
		if is_dragging:
			if get_rect().has_point(to_local(event.position)):
				position = event.position + _offset
	#_unhandled_input
	pass
