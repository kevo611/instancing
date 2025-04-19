extends CanvasLayer

enum COLORS { \
	COLOR_RED, COLOR_GREEN, COLOR_BLUE, COLOR_WHITE, \
	COLOR_GOLD, COLOR_GRAY, COLOR_BLACK, COLOR_YELLOW, \
	COLOR_WEBPURPLE, COLOR_VIOLETRED, COLOR_VIOLET, COLOR_TEAL, \
	COLOR_SKYBLUE, COLOR_SILVER, COLOR_ROSE, 	COLOR_REBECCAPURPLE, \
	COLOR_PURPLE, COLOR_ORCHID, COLOR_ORANGE, COLOR_OCEANGREEN, \
	COLOR_MISTYROSE, COLOR_MAROON, COLOR_MAGENTA, COLOR_LEAFGREEN, \
	COLOR_INDIGO, COLOR_CYAN}

#preload all the color component scenes
var component_red_scene = preload("res://scene/Component_Red.tscn")
var component_green_scene = preload("res://scene/Component_Green.tscn")
var component_blue_scene = preload("res://scene/Component_Blue.tscn")
var component_white_scene = preload("res://scene/Component_White.tscn")
var component_gold_scene = preload("res://scene/Component_Gold.tscn")
var component_gray_scene = preload("res://scene/Component_Gray.tscn")
var component_black_scene = preload("res://scene/Component_Black.tscn")
var component_yellow_scene = preload("res://scene/Component_Yellow.tscn")
var component_webpurple_scene = preload("res://scene/Component_Webpurple.tscn")
var component_violetred_scene = preload("res://scene/Component_Violetred.tscn")
var component_violet_scene = preload("res://scene/Component_Violet.tscn")
var component_teal_scene = preload("res://scene/Component_Teal.tscn")
var component_skyblue_scene = preload("res://scene/Component_Skyblue.tscn")
var component_silver_scene = preload("res://scene/Component_Silver.tscn")
var component_rose_scene = preload("res://scene/Component_Rose.tscn")
var component_rebeccapurple_scene = preload("res://scene/Component_Rebeccapurple.tscn")
var component_purple_scene = preload("res://scene/Component_Purple.tscn")
var component_orchid_scene = preload("res://scene/Component_Orchid.tscn")
var component_orange_scene = preload("res://scene/Component_Orange.tscn")
var component_oceangreen_scene = preload("res://scene/Component_Oceangreen.tscn")
var component_mistyrose_scene = preload("res://scene/Component_Mistyrose.tscn")
var component_maroon_scene = preload("res://scene/Component_Maroon.tscn")
var component_magenta_scene = preload("res://scene/Component_Magenta.tscn")
var component_leafgreen_scene = preload("res://scene/Component_Leafgreen.tscn")
var component_indigo_scene = preload("res://scene/Component_Indigo.tscn")
var component_cyan_scene = preload("res://scene/Component_Cyan.tscn")

@onready var item_list: ItemList = $UI/ItemList
@onready var touch_screen_generate_button: TouchScreenButton = $UI/TouchScreenGenerateButton

@export var spawn_position = Vector2(150,700)

func _ready() -> void:
	#default to red selection
	item_list.select(0)
	
	#poplate color component palette grid
	#display_palette()
	inst(COLORS.COLOR_GOLD, Vector2(420,420))
	pass

func display_palette() -> void:
	inst(COLORS.COLOR_RED, Vector2(450,90))
	inst(COLORS.COLOR_GREEN, Vector2(600,90))
	inst(COLORS.COLOR_BLUE, Vector2(750,90))
	inst(COLORS.COLOR_WHITE, Vector2(900,90))
	inst(COLORS.COLOR_GOLD, Vector2(1050,90))
	inst(COLORS.COLOR_GRAY, Vector2(1200,90))
	inst(COLORS.COLOR_BLACK, Vector2(1350,90))
	inst(COLORS.COLOR_YELLOW, Vector2(450,284))
	inst(COLORS.COLOR_WEBPURPLE, Vector2(600,284))
	inst(COLORS.COLOR_VIOLETRED, Vector2(750,284))
	inst(COLORS.COLOR_VIOLET, Vector2(900,284))
	inst(COLORS.COLOR_TEAL, Vector2(1050,284))
	inst(COLORS.COLOR_SKYBLUE, Vector2(1200,284))
	inst(COLORS.COLOR_SILVER, Vector2(1350,284))
	inst(COLORS.COLOR_ROSE, Vector2(450,475))
	inst(COLORS.COLOR_REBECCAPURPLE, Vector2(600,475))
	inst(COLORS.COLOR_PURPLE, Vector2(750,475))
	inst(COLORS.COLOR_ORCHID, Vector2(900,475))
	inst(COLORS.COLOR_ORANGE, Vector2(1050,475))
	inst(COLORS.COLOR_OCEANGREEN, Vector2(1200,475))
	inst(COLORS.COLOR_MISTYROSE, Vector2(1350,475))
	inst(COLORS.COLOR_MAROON, Vector2(450,668))
	inst(COLORS.COLOR_MAGENTA, Vector2(600,668))
	inst(COLORS.COLOR_LEAFGREEN, Vector2(750,668))
	inst(COLORS.COLOR_INDIGO, Vector2(900,668))
	inst(COLORS.COLOR_CYAN, Vector2(1050,668))
	#func display_palette() -> void:
	pass

func _physics_process(_delta: float) -> void:

	pass

#instantiate new color component at desired position
func inst(_group: int, _pos):
	var instance
	match _group:
		COLORS.COLOR_RED:
			instance = component_red_scene.instantiate()
		COLORS.COLOR_GREEN:
			instance = component_green_scene.instantiate()
		COLORS.COLOR_BLUE:
			instance = component_blue_scene.instantiate()
		COLORS.COLOR_WHITE:
			instance = component_white_scene.instantiate()
		COLORS.COLOR_GOLD:
			instance = component_gold_scene.instantiate()
		COLORS.COLOR_GRAY:
			instance = component_gray_scene.instantiate()
		COLORS.COLOR_BLACK:
			instance = component_black_scene.instantiate()
		COLORS.COLOR_YELLOW:
			instance = component_yellow_scene.instantiate()
		COLORS.COLOR_WEBPURPLE:
			instance = component_webpurple_scene.instantiate()
		COLORS.COLOR_VIOLETRED:
			instance = component_violetred_scene.instantiate()
		COLORS.COLOR_VIOLET:
			instance = component_violet_scene.instantiate()
		COLORS.COLOR_TEAL:
			instance = component_teal_scene.instantiate()
		COLORS.COLOR_SKYBLUE:
			instance = component_skyblue_scene.instantiate()
		COLORS.COLOR_SILVER:
			instance = component_silver_scene.instantiate()
		COLORS.COLOR_ROSE:
			instance = component_rose_scene.instantiate()
		COLORS.COLOR_REBECCAPURPLE:
			instance = component_rebeccapurple_scene.instantiate()
		COLORS.COLOR_PURPLE:
			instance = component_purple_scene.instantiate()
		COLORS.COLOR_ORCHID:
			instance = component_orchid_scene.instantiate()
		COLORS.COLOR_ORANGE:
			instance = component_orange_scene.instantiate()
		COLORS.COLOR_OCEANGREEN:
			instance = component_oceangreen_scene.instantiate()
		COLORS.COLOR_MISTYROSE:
			instance = component_mistyrose_scene.instantiate()
		COLORS.COLOR_MAROON:
			instance = component_maroon_scene.instantiate()
		COLORS.COLOR_MAGENTA:
			instance = component_magenta_scene.instantiate()
		COLORS.COLOR_LEAFGREEN:
			instance = component_leafgreen_scene.instantiate()
		COLORS.COLOR_INDIGO:
			instance = component_indigo_scene.instantiate()
		COLORS.COLOR_CYAN:
			instance = component_cyan_scene.instantiate()

	instance.position = _pos
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
		var _group
		#there's always an item selected
		if item_list.get_selected_items().size() > 0:
			#store what color is selected
			if item_list.get_selected_items().get(0) == COLORS.COLOR_RED:
				_group = COLORS.COLOR_RED
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_GREEN:
				_group = COLORS.COLOR_GREEN
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_BLUE:
				_group = COLORS.COLOR_BLUE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_WHITE:
				_group = COLORS.COLOR_WHITE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_GOLD:
				_group = COLORS.COLOR_GOLD
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_GRAY:
				_group = COLORS.COLOR_GRAY
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_BLACK:
				_group = COLORS.COLOR_BLACK
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_YELLOW:
				_group = COLORS.COLOR_YELLOW
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_WEBPURPLE:
				_group = COLORS.COLOR_WEBPURPLE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_VIOLETRED:
				_group = COLORS.COLOR_VIOLETRED
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_VIOLET:
				_group = COLORS.COLOR_VIOLET
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_TEAL:
				_group = COLORS.COLOR_TEAL
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_SKYBLUE:
				_group = COLORS.COLOR_SKYBLUE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_SILVER:
				_group = COLORS.COLOR_SILVER
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_ROSE:
				_group = COLORS.COLOR_ROSE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_REBECCAPURPLE:
				_group = COLORS.COLOR_REBECCAPURPLE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_PURPLE:
				_group = COLORS.COLOR_PURPLE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_ORCHID:
				_group = COLORS.COLOR_ORCHID
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_ORANGE:
				_group = COLORS.COLOR_ORANGE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_OCEANGREEN:
				_group = COLORS.COLOR_OCEANGREEN
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_MISTYROSE:
				_group = COLORS.COLOR_MISTYROSE
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_MAROON:
				_group = COLORS.COLOR_MAROON
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_MAGENTA:
				_group = COLORS.COLOR_MAGENTA
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_LEAFGREEN:
				_group = COLORS.COLOR_LEAFGREEN
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_INDIGO:
				_group = COLORS.COLOR_INDIGO
			elif item_list.get_selected_items().get(0) == COLORS.COLOR_CYAN:
				_group = COLORS.COLOR_CYAN

			#spawn a new color component 
			inst(_group, spawn_position)
	#_unhandled_input
	pass
