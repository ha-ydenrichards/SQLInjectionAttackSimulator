extends Node2D

@onready var username_input = $MarginContainer2/VBoxContainer/UsernameInput
@onready var password_input = $MarginContainer2/VBoxContainer/PasswordInput
@onready var win_sound = $Win
@onready var wrong_sound = $Wrong
@onready var winning_text = $winning_text
@onready var random_text = $random_text
@onready var margin_container2 = $MarginContainer2
@onready var password_show = $PasswordShow

# Called when the node enters the scene tree for the first time.
func _ready():
	password_input.secret = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# If the user presses escape, go back to the main menu
	if (Input.is_action_just_pressed("back_to_main_menu")):
		get_tree().change_scene_to_file("res://Main Menu/main_menu.tscn")
	# If the user presses enter, submit the password
	if (Input.is_action_just_pressed("submit_password")):
		_on_login_button_pressed()

func _on_login_button_pressed() -> void:
	# Store the username's text in u
	var u = username_input.text
	# Delete all whitespace
	u = u.replace(" ", "")
	u = str(u)
	# Store the username's text in p
	var p = password_input.text
	p = p.replace(" ", "")
	p = str(p)
	# If the user attempts a valid SQL injection
	if u == "admin" and p == "'OR'1'='1":
		win_sound.play()
		winning_text.show()
		random_text.hide()
		margin_container2.hide()
		password_show.hide()
	else:
		wrong_sound.play()

# Show password
func _on_password_show_button_down() -> void:
	password_input.secret = false
	
# Hide password
func _on_password_show_button_up() -> void:
	password_input.secret = true
