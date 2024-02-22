extends CanvasLayer

signal bought_item
@onready var money_label = $Control/MarginContainer/VBoxContainer/HBoxContainer/Label
@onready var buy_button = $Control/MarginContainer/VBoxContainer/HBoxContainer/Button
@onready var sprite = $Control/MarginContainer/VBoxContainer/HBoxContainer/Sprite2D

var money: int = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	money_label.visible = false
	buy_button.visible = false
	sprite.visible = false
	emit_signal("bought_item")
