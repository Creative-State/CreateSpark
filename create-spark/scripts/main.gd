extends Node2D

@onready var items = $Control/Panel2/Items/ScrollContainer/VBoxContainer
@onready var and_gate_scene = preload("res://scenes/gates/AndGate.tscn")
@onready var gate_icon = preload("res://assets/andgate.png")

func _ready():
	for i in range(20):
		var button = Button.new()
		button.text = "AND Gate " + str(i + 1)
		button.icon = gate_icon
		button.custom_minimum_size = Vector2(80, 40)
		
		button.pressed.connect(_on_add_and_gate.bind(i))
		items.add_child(button)

func _on_add_and_gate(index):
	var gate = and_gate_scene.instantiate()
	gate.position = Vector2(100 + index * 120, 200)
	add_child(gate)
