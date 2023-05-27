extends Node

@onready var main: Control = $Main
@onready var settings: Control = $Settings

# Called when the node enters the scene tree for the first time.
func _ready():
	settings.visible = false

func _unhandled_input(event: InputEvent) -> void:
	if (event.is_action_pressed("Quit")):
		get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_rts_test_field_pressed() -> void:
	SceneSwitcher.switch_scene("res://Scenes/Main/PlayerPlayground.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_settings_pressed() -> void:
	main.visible = false
	settings.visible = true

func _on_back_pressed() -> void:
	main.visible = true
	settings.visible = false
