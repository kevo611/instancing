extends Node2D

var component = preload("res://component.tscn")
var component_red_scene = preload("res://Component_Red.tscn")
var component_green_scene = preload("res://Component_Green.tscn")
var component_blue_scene = preload("res://Component_Blue.tscn")
var component_white_scene = preload("res://Component_White.tscn")

func _ready() -> void:
	var instance = component_red_scene.instantiate()
	instance.position = Vector2(300,300)
	add_child(instance)
	instance = component_green_scene.instantiate()
	instance.position = Vector2(450,300)
	add_child(instance)
	instance = component_blue_scene.instantiate()
	instance.position = Vector2(600,300)
	add_child(instance)
	instance = component_white_scene.instantiate()
	instance.position = Vector2(750,300)
	add_child(instance)
	pass


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("duplicate"):
		print("instancing new component")
		inst(get_global_mouse_position())
	pass


func inst(pos):
	var instance = component_red_scene.instantiate()
	instance.position = pos
	add_child(instance)
	
	queue_redraw()


func _process(_delta: float) -> void:
	queue_redraw()
	pass


func _unhandled_input(event: InputEvent) -> void:
	
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().quit()
	
	
	#ignore these events
	if event is InputEventMouseButton or event is InputEventMouseMotion or event is InputEventScreenTouch or event is InputEventKey or event is InputEventScreenDrag or event is InputEventJoypadButton or event is InputEventJoypadMotion:
		return
	
	var choice:int
	var _pos: Vector2 = Vector2.ZERO
	
	#if color_choice.get_selected_items().size() > 0:
		#choice = color_choice.get_selected_items()[0]
		#print(choice)
		#print(_pos)
	
	#escape or exit button
	if event is InputEventAction and event.action == "exit":
		get_tree().quit()
	elif event is InputEventAction and event.action == "duplicate" and choice == 0:
		
		var new_component = component._duplicate(0, Vector2(250,250))
		
		if new_component:
			new_component.position = _pos
			new_component.scale = Vector2(1.25,1.25)
			print("spawning new red component")
		
	elif event.action == 1:
		print("green")
	elif event.action == 2:
		print("blue")
	elif event.action == 3:
		print("white")
	
	#_unhandled_input
	pass
