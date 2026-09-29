extends Node2D

#Referencias a nodos
@onready var line_edit:LineEdit = $LineEdit
@onready var label:Label = $Label
#Variables declaradas
var nombre = "Godi"

func _ready() -> void:
	label.text = "Hola, soy " + nombre + ". Dime algo!..."; #Inicializamos el texto

func _on_line_edit_text_submitted(new_text: String) -> void:
	line_edit.clear(); #Limpia el apartado de input
	new_text = new_text.to_lower(); #Cambiamos a minusculas
	
	if new_text.contains("hola"): #SI: El texto contiene un 'hola'
		#Cambiamos el texto
		label.text = "Hola, te saludo!";
	else: #CASO CONTRARIO:
		#Cambiamos el texto
		label.text = "Ok.. entonces tu eres un " + new_text + "?";
