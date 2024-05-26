extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print("_on_ready")
	var screen_size = get_viewport().size  # ビューポートサイズを取得
	$Background.texture = load("res://assets/images/title_screen.webp")  # 画像をロード
	$Background.position = screen_size / 2  # スプライトを中央に配置

	# スプライトのサイズをビューポートにフィットさせる
	var texture_size = $Background.texture.get_size()
	var scale_factor = min(screen_size.x / texture_size.x, screen_size.y / texture_size.y)
	$Background.scale = Vector2(scale_factor, scale_factor)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("_process")
