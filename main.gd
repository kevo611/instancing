extends CanvasLayer

enum COLORS { \
	COLOR_RED, COLOR_GREEN, COLOR_BLUE, COLOR_WHITE, \
	COLOR_GOLD, COLOR_GRAY, COLOR_BLACK, COLOR_YELLOW, \
	COLOR_WEBPURPLE, COLOR_VIOLETRED, COLOR_VIOLET, COLOR_TEAL, \
	COLOR_SKYBLUE, COLOR_SILVER, COLOR_ROSE, 	COLOR_REBECCAPURPLE, \
	COLOR_PURPLE, COLOR_ORCHID, COLOR_ORANGE, COLOR_OCEANGREEN, \
	COLOR_MISTYROSE, COLOR_MAROON, COLOR_MAGENTA, COLOR_LEAFGREEN, \
	COLOR_INDIGO, COLOR_CYAN}

var component_red_scene = preload("res://Component_Red.tscn")
var component_green_scene = preload("res://Component_Green.tscn")
var component_blue_scene = preload("res://Component_Blue.tscn")
var component_white_scene = preload("res://Component_White.tscn")
var component_gold_scene = preload("res://Component_Gold.tscn")
var component_gray_scene = preload("res://Component_Gray.tscn")
var component_black_scene = preload("res://Component_Black.tscn")
var component_yellow_scene = preload("res://Component_Yellow.tscn")
var component_webpurple_scene = preload("res://Component_Webpurple.tscn")
var component_violetred_scene = preload("res://Component_Violetred.tscn")
var component_violet_scene = preload("res://Component_Violet.tscn")
var component_teal_scene = preload("res://Component_Teal.tscn")
var component_skyblue_scene = preload("res://Component_Skyblue.tscn")
var component_silver_scene = preload("res://Component_Silver.tscn")
var component_rose_scene = preload("res://Component_Rose.tscn")
var component_rebeccapurple_scene = preload("res://Component_Rebeccapurple.tscn")
var component_purple_scene = preload("res://Component_Purple.tscn")
var component_orchid_scene = preload("res://Component_Orchid.tscn")
var component_orange_scene = preload("res://Component_Orange.tscn")
var component_oceangreen_scene = preload("res://Component_Oceangreen.tscn")
var component_mistyrose_scene = preload("res://Component_Mistyrose.tscn")
var component_maroon_scene = preload("res://Component_Maroon.tscn")
var component_magenta_scene = preload("res://Component_Magenta.tscn")
var component_leafgreen_scene = preload("res://Component_Leafgreen.tscn")
var component_indigo_scene = preload("res://Component_Indigo.tscn")
var component_cyan_scene = preload("res://Component_Cyan.tscn")

@onready var item_list: ItemList = $Node2D/ItemList
@onready var touch_screen_generate_button: TouchScreenButton = $Node2D/TouchScreenGenerateButton

func _ready() -> void:
	item_list.select(0)
	var instance = component_red_scene.instantiate()
	instance.position = Vector2(450,90)
	add_child(instance)
	instance = component_green_scene.instantiate()
	instance.position = Vector2(600,90)
	add_child(instance)
	instance = component_blue_scene.instantiate()
	instance.position = Vector2(750,90)
	add_child(instance)
	instance = component_white_scene.instantiate()
	instance.position = Vector2(900,90)
	add_child(instance)
	instance = component_gold_scene.instantiate()
	instance.position = Vector2(1050,90)
	add_child(instance)
	instance = component_gray_scene.instantiate()
	instance.position = Vector2(1200,90)
	add_child(instance)
	instance = component_black_scene.instantiate()
	instance.position = Vector2(1350,90)
	add_child(instance)
	instance = component_yellow_scene.instantiate()
	instance.position = Vector2(450,284)
	add_child(instance)
	instance = component_webpurple_scene.instantiate()
	instance.position = Vector2(600,284)
	add_child(instance)
	instance = component_violetred_scene.instantiate()
	instance.position = Vector2(750,284)
	add_child(instance)
	instance = component_violet_scene.instantiate()
	instance.position = Vector2(900,284)
	add_child(instance)
	instance = component_teal_scene.instantiate()
	instance.position = Vector2(1050,284)
	add_child(instance)
	instance = component_skyblue_scene.instantiate()
	instance.position = Vector2(1200,284)
	add_child(instance)
	instance = component_silver_scene.instantiate()
	instance.position = Vector2(1350,284)
	add_child(instance)
	instance = component_rose_scene.instantiate()
	instance.position = Vector2(450,475)
	add_child(instance)
	instance = component_rebeccapurple_scene.instantiate()
	instance.position = Vector2(600,475)
	add_child(instance)
	instance = component_purple_scene.instantiate()
	instance.position = Vector2(750,475)
	add_child(instance)
	instance = component_orchid_scene.instantiate()
	instance.position = Vector2(900,475)
	add_child(instance)
	instance = component_orange_scene.instantiate()
	instance.position = Vector2(1050,475)
	add_child(instance)
	instance = component_oceangreen_scene.instantiate()
	instance.position = Vector2(1200,475)
	add_child(instance)
	instance = component_mistyrose_scene.instantiate()
	instance.position = Vector2(1350,475)
	add_child(instance)
	instance = component_maroon_scene.instantiate()
	instance.position = Vector2(450,668)
	add_child(instance)
	instance = component_magenta_scene.instantiate()
	instance.position = Vector2(600,668)
	add_child(instance)
	instance = component_leafgreen_scene.instantiate()
	instance.position = Vector2(750,668)
	add_child(instance)
	instance = component_indigo_scene.instantiate()
	instance.position = Vector2(900,668)
	add_child(instance)
	instance = component_cyan_scene.instantiate()
	instance.position = Vector2(1050,668)
	add_child(instance)
	pass

func _physics_process(_delta: float) -> void:

	pass

func inst(_group: int, pos):
	var instance = component_red_scene.instantiate()
	instance.position = pos
	add_child(instance)
	pass

func _unhandled_input(event: InputEvent) -> void:
	#shut down on escape
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().quit()
	#ignore these events
	if event is InputEventMouseButton or event is InputEventMouseMotion or event is InputEventScreenTouch or event is InputEventKey or event is InputEventScreenDrag or event is InputEventJoypadButton or event is InputEventJoypadMotion:
		return	
	#var _pos: Vector2 = Vector2.ZERO
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
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_GOLD:
				instance = component_gold_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_GRAY:
				instance = component_gray_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_BLACK:
				instance = component_black_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_YELLOW:
				instance = component_yellow_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_WEBPURPLE:
				instance = component_webpurple_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_VIOLETRED:
				instance = component_violetred_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_VIOLET:
				instance = component_violet_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_TEAL:
				instance = component_teal_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_SKYBLUE:
				instance = component_skyblue_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_SILVER:
				instance = component_silver_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_ROSE:
				instance = component_rose_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_REBECCAPURPLE:
				instance = component_rebeccapurple_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_PURPLE:
				instance = component_purple_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_ORCHID:
				instance = component_orchid_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_ORANGE:
				instance = component_orange_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_OCEANGREEN:
				instance = component_oceangreen_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_MISTYROSE:
				instance = component_mistyrose_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_MAROON:
				instance = component_maroon_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_MAGENTA:
				instance = component_magenta_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_LEAFGREEN:
				instance = component_leafgreen_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_INDIGO:
				instance = component_indigo_scene.instantiate()
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_CYAN:
				instance = component_cyan_scene.instantiate()

			instance.position = Vector2(150,700)
			add_child(instance)
			print("spawning new component")
	#_unhandled_input
	pass
