extends Button

@export var currentPage: Control
@export var nextPage: Control
@export var nextScenePath: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	if (currentPage != null):
		currentPage.visible = false
		nextPage.visible = true
	if (nextScenePath != ""):
		SceneSwitcher.switch_scene(nextScenePath)

func plugIn(cPage: Control, nPage: Control, nScenePath: String):
	currentPage = cPage
	nextPage = nPage
	nextScenePath  = nScenePath
