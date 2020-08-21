extends TileMap

func _ready():
	randomize()
	randomMap()


# 生成随机背景地图
func randomMap():
	var cells = get_used_cells()
	print(tile_set.autotile_get_spacing(0))
	for v in cells:
		var tile = tile_set.find_tile_by_name('wall')
		set_cell(v.x, v.y, tile, false, false, false, Vector2(randi() % 8, 0))
