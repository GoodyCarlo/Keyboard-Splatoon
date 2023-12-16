extends Node2D

#Main keyboard rows
@onready var row_1 = $"Control/BoxContainer/VBoxContainer/row 1"
@onready var row_2 = $"Control/BoxContainer/VBoxContainer/row 2"
@onready var row_3 = $"Control/BoxContainer/VBoxContainer/row 3"

@export var buttonScene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var rows = [row_1,row_2,row_3]
	var row = rows[0]
	const  letters = "QWERTYUIOPASDFGHJKLZXCVBNM"
	
	for x in range(26):
		if x == 10:
			row = rows[1]
		if x == 19:
			row = rows[2]

		var button = buttonScene.instantiate()
		button.name = str(letters[x])
		button.text = letters[x]
		row.add_child(button)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	pass

