extends Node2D

func _ready():
	var screen_size: Vector2 = get_viewport().size  # ビューポートサイズを取得
	$Background.position = screen_size / 2  # スプライトを中央に配置

	# スプライトのサイズをビューポートにフィットさせる
	var texture_size: Vector2 = $Background.texture.get_size()
	var scale_factor: float = min(screen_size.x / texture_size.x, screen_size.y / texture_size.y)
	$Background.scale = Vector2(scale_factor, scale_factor)

	# ボタンを中央に配置
	$StartButton.scale = Vector2(0.7, 0.7)
	var button_texture: Texture = $StartButton.texture_normal
	var button_rect_size: Vector2 = Vector2(button_texture.get_size().x, button_texture.get_size().y) * 0.7
	$StartButton.position = (screen_size - button_rect_size) / 2 + Vector2(0, screen_size.y * 0.3)  # 少し下に移動
