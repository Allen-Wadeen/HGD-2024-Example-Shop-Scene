extends CanvasLayer

var money = 0
@onready var moneylabel = $Control/MarginContainer/HBoxContainer/MoneyLabel
@onready var icon = load("res://Assets/icon.svg")
@onready var item = $Control/MarginContainer/Item1

# Called when the node enters the scene tree for the first time.
func _ready():
	update_money(10000)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_money(change):
	money = money+change
	moneylabel.text = "Money: " + str(money)

func _on_item_1_bought_item():
	update_money(-100)

func _on_item_2_bought_item():
	update_money(-200)

func _on_item_3_bought_item():
	update_money(-300)
