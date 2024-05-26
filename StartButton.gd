extends TextureButton

func _ready():
	print("_ready")
	connect("pressed", Callable(self, "_on_start_button_pressed"))

func _on_start_button_pressed():
	print("Start Button Pressed")
