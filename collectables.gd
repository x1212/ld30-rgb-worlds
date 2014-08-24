
extends Area2D

export var on_layer = ""

# member variables here, example:
# var a=2
# var b="textvar"

var got_collected = false

func _ready():
	# Initalization here
	pass




func _on_Area2D_body_enter( body ):
	got_collected = true
	print("collected")
	hide()
	set_enable_monitoring(false)
	get_parent().get_node("SamplePlayer2D").play("j")
