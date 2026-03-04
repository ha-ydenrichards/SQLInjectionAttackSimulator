extends Node2D

# Switch to level one
func _on_level_one_pressed() -> void:
	get_tree().change_scene_to_file("res://LevelOne/levelOne.tscn")

# Switch to level two
func _on_level_two_pressed() -> void:
	get_tree().change_scene_to_file("res://LevelTwo/levelTwo.tscn")

# Switch to level three
func _on_level_three_pressed() -> void:
	get_tree().change_scene_to_file("res://LevelThree/levelThree.tscn")

# Switch to level four
func _on_level_four_ec_pressed() -> void:
	get_tree().change_scene_to_file("res://LevelFour/levelFourEC.tscn")
