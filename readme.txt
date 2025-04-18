ADDING A NEW COLOR COMPONENT

duplicate the "var component_(color)_scene =..." declaration for the new color

copy the "Component_(Color)" string

Scene -> New Scene
+ Other Node
	- select Component
	- click Create
	
rename Component to Sprite2D

populate Sprite2D.Texture property with new color.png

Scene -> Save Scene As...
	- save as "res://Component_(Color).tscn"
	
Attach script
	- "res://Component_(Color).gd"
	
add "class_name Component_(Color)"


