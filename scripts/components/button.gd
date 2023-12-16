extends Button

var pressedPressed = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	
	if event is InputEventKey and event.pressed:
		if char(event.keycode) == name:
			if pressedPressed:
				self.add_theme_color_override("font_color", Color(1, 0.5, 0))
			else:
				self.add_theme_color_override("font_color", Color(0, 0, 0))
			
			pressedPressed = !pressedPressed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
