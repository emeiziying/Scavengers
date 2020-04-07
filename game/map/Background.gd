extends TileMap


func _ready():
	randomize()
	randomMap()


# 生成随机背景地图
func randomMap():
	var cells = get_used_cells()
	for v in cells:
		var tile = tile_set.find_tile_by_name('floor')
		set_cell(v.x, v.y, tile, false, false, false, Vector2(randi() % 8, 0))
