

extends Node

func _ready():
	pass



func start_game():
	var root = get_scene().get_root()
	var current_scene = root.get_child(root.get_child_count() -1)
	var game = ResourceLoader.load("res://game.scn").instance()
	current_scene.queue_free()
	root.add_child(game)


func start_hard_game():
	var root = get_scene().get_root()
	var current_scene = root.get_child(root.get_child_count() -1)
	var game = ResourceLoader.load("res://game.scn").instance()
	game.set_hard()
	current_scene.queue_free()
	root.add_child(game)


var block_c = false
func back_to_menu():
	var root = get_scene().get_root()
	var current_scene = root.get_child(root.get_child_count() -1)
	var game = ResourceLoader.load("res://title.scn").instance()
	current_scene.queue_free()
	root.add_child(game)
	block_c = true

func cancel_block():
	return block_c

func reset_cancel_block():
	block_c = false