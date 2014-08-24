
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"


var game_state_node
var r
var g
var b
var rg
var rb
var gb
var rgb
var anti
func _ready():
	game_state_node = get_parent()
	r = get_node("red")
	g = get_node("green")
	b = get_node("blue")
	rg = get_node("mixed_rg")
	rb = get_node("mixed_rb")
	gb = get_node("mixed_gb")
	rgb = get_node("mixed_rgb")
	anti = get_node("anti")
	set_process(true)


func _process(delta):
	if (game_state_node.world == 0):
		r.hide()
		if (r extends TileMap):
			r.set_collision_layer_mask(0)
		g.hide()
		g.set_collision_layer_mask(0)
		b.hide()
		b.set_collision_layer_mask(0)
		rg.hide()
		rg.set_collision_layer_mask(0)
		rb.hide()
		rb.set_collision_layer_mask(0)
		gb.hide()
		gb.set_collision_layer_mask(0)
		rgb.hide()
		rgb.set_collision_layer_mask(0)
		anti.hide()
		anti.set_collision_layer_mask(0)
	elif (game_state_node.world == 1):
		r.hide()
		r.set_collision_layer_mask(0)
		g.hide()
		g.set_collision_layer_mask(0)
		b.hide()
		b.set_collision_layer_mask(0)
		rg.hide()
		rg.set_collision_layer_mask(0)
		rb.hide()
		rb.set_collision_layer_mask(0)
		gb.hide()
		gb.set_collision_layer_mask(0)
		rgb.hide()
		rgb.set_collision_layer_mask(0)
		anti.show()
		anti.set_collision_layer_mask(1)
	elif (game_state_node.world == 2):
		anti.hide()
		anti.set_collision_layer_mask(0)
		if (game_state_node.red_active):
			r.show()
			r.set_collision_layer_mask(1)
			if (game_state_node.green_active):
				g.show()
				g.set_collision_layer_mask(1)
				rg.show()
				rg.set_collision_layer_mask(1)
				if (game_state_node.blue_active):
					b.show()
					b.set_collision_layer_mask(1)
					rb.show()
					rb.set_collision_layer_mask(1)
					gb.show()
					gb.set_collision_layer_mask(1)
					rgb.show()
					rgb.set_collision_layer_mask(1)
				else :
					b.hide()
					b.set_collision_layer_mask(0)
					rb.hide()
					rb.set_collision_layer_mask(0)
					gb.hide()
					gb.set_collision_layer_mask(0)
					rgb.hide()
					rgb.set_collision_layer_mask(0)
			else :
				g.hide()
				g.set_collision_layer_mask(0)
				rg.hide()
				rg.set_collision_layer_mask(0)
				gb.hide()
				gb.set_collision_layer_mask(0)
				rgb.hide()
				rgb.set_collision_layer_mask(0)
				if (game_state_node.blue_active):
					b.show()
					b.set_collision_layer_mask(1)
					rb.show()
					rb.set_collision_layer_mask(1)
				else :
					b.hide()
					b.set_collision_layer_mask(0)
					rb.hide()
					rb.set_collision_layer_mask(0)
		else :
			r.hide()
			r.set_collision_layer_mask(0)
			rb.hide()
			rb.set_collision_layer_mask(0)
			rg.hide()
			rg.set_collision_layer_mask(0)
			rgb.hide()
			rgb.set_collision_layer_mask(0)
			if (game_state_node.green_active):
				g.show()
				g.set_collision_layer_mask(1)
				if (game_state_node.blue_active):
					b.show()
					b.set_collision_layer_mask(1)
					gb.show()
					gb.set_collision_layer_mask(1)
				else :
					b.hide()
					b.set_collision_layer_mask(0)
					gb.hide()
					gb.set_collision_layer_mask(0)
			else :
				g.hide()
				g.set_collision_layer_mask(0)
				gb.hide()
				gb.set_collision_layer_mask(0)
				if (game_state_node.blue_active):
					b.show()
					b.set_collision_layer_mask(1)
				else :
					b.hide()
					b.set_collision_layer_mask(0)


