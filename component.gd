class_name Component
extends Sprite2D

enum COLORS {COLOR_RED, COLOR_GREEN, COLOR_BLUE, COLOR_WHITE}

var is_dragging: bool
var _offset: Vector2
var _z_index: int


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _unhandled_input(event: InputEvent) -> void:
	#delete component if right clicked	
	if event is InputEventMouseButton and event.pressed and event.button_index == 2:
		if get_rect().has_point(to_local(event.position)):
			queue_free()
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
		scale = Vector2.ONE
		queue_redraw()
	#when the touch screen pressed and dragged or the mouse is clicked and dragged
	elif event is InputEventScreenDrag:
		#if clicking the tile
		if is_dragging:
			if get_rect().has_point(to_local(event.position)):
				position = event.position + _offset
	#_unhandled_input
	pass
