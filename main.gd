extends Node2D

enum COLORS {COLOR_RED, COLOR_GREEN, COLOR_BLUE, COLOR_WHITE}

var component = preload("res://component.tscn")
var component_red_scene = preload("res://Component_Red.tscn")
var component_green_scene = preload("res://Component_Green.tscn")
var component_blue_scene = preload("res://Component_Blue.tscn")
var component_white_scene = preload("res://Component_White.tscn")

@onready var item_list: ItemList = $ItemList
@onready var touch_screen_generate_button: TouchScreenButton = $TouchScreenGenerateButton


func _ready() -> void:
	item_list.select(0)
	var instance = component_red_scene.instantiate()
	instance.position = Vector2(450,300)
	add_child(instance)
	instance = component_green_scene.instantiate()
	instance.position = Vector2(600,300)
	add_child(instance)
	instance = component_blue_scene.instantiate()
	instance.position = Vector2(750,300)
	add_child(instance)
	instance = component_white_scene.instantiate()
	instance.position = Vector2(900,300)
	add_child(instance)
	pass


func _physics_process(_delta: float) -> void:
	#if Input.is_action_just_pressed("duplicate"):
		#print("instancing new component")
		#inst(0, get_global_mouse_position())
	pass


func inst(_group: int, pos):
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
	
	var _pos: Vector2 = Vector2.ZERO

	#escape or exit button
	if event is InputEventAction and event.action == "exit":
		get_tree().quit()
	elif event is InputEventAction and event.action == "rb":
		queue_free()
		return
	elif event is InputEventAction and event.action == "duplicate":
		var instance = component_red_scene.instantiate()
		if item_list.get_selected_items().size() > 0:
			if item_list.get_selected_items().get(0) == COLORS.COLOR_RED:
				instance = component_red_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_GREEN:
				instance = component_green_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_BLUE:
				instance = component_blue_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_WHITE:
				instance = component_white_scene.instantiate()
		
			instance.position = Vector2(300,650)
			add_child(instance)
			print("spawning new red component")
	
	#_unhandled_input
	pass
