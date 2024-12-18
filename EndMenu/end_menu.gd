extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	
	var rid = get_canvas_item()
	RenderingServer.canvas_item_set_z_index(rid, 1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_restart_button_pressed() -> void:
	visible = false
	get_tree().reload_current_scene()


func _on_back_button_2_pressed() -> void:
	visible = false
	get_tree().change_scene_to_file("res://ASSIGNMENT/main_menu/main_menu.tscn")


func _on_quit_button_3_pressed() -> void:
	get_tree().quit()
