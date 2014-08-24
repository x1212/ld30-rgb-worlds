

extends Node

func _ready():
	pass



func start_game():
	var root = get_scene().get_root()
	var current_scene = root.get_child(root.get_child_count() -1)
	var game = ResourceLoader.load("game.scn").instance()
	current_scene.queue_free()
	root.add_child(game)


func start_hard_game():
	var root = get_scene().get_root()
	var current_scene = root.get_child(root.get_child_count() -1)
	var game = ResourceLoader.load("game.scn").instance()
	game.set_hard()
	current_scene.queue_free()
	root.add_child(game)


func back_to_menu():
	var root = get_scene().get_root()
	var current_scene = root.get_child(root.get_child_count() -1)
	var game = ResourceLoader.load("title.scn").instance()
	current_scene.queue_free()
	root.add_child(game)
	