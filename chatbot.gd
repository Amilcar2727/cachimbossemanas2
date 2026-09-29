extends Node2D

#Referencias a nodos
@onready var line_edit:LineEdit = $LineEdit
@onready var label:Label = $Label
#Variables declaradas
var nombre = "Godi"

func _ready() -> void:
	label.text = "Hola, soy " + nombre + ". Dime algo!...";

func _on_line_edit_text_submitted(new_text: String) -> void:
	if new_text.contains("hola"):
		label.text = "Hola, te saludo!";
	else:
		label.text = "Ok.. entonces tu eres un " + new_text + "?";
	
