extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_buttton_pressed() -> void:
<<<<<<< HEAD
	pass
=======
	get_tree().change_scene_to_file("res://ASSIGNMENT/scenes/game.tscn")
>>>>>>> 1266cbb034f5c64b5efd0296f87018a01ed716ed


func _on_quit_button_pressed() -> void:
	get_tree().quit()
