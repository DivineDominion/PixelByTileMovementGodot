extends Node2D

const TILE_SIZE = 16

func _draw() -> void:
    _draw_grid()

func _draw_grid() -> void:
    # Draw a border around each tile: we cannot draw a fine separator between
    # tiles with this zoomed-in viewport. It look as if the player position
    # is off when we only draw a line on the right and bottom edge of each tile
    var screen_size = get_viewport_rect().size
    for x in range(0, screen_size.x / TILE_SIZE):
        # Draw left line; add +0.5 because the lefthand side is cropped for some reason
        var pos = Vector2(x, 0) * TILE_SIZE + Vector2(0.5, 0)
        draw_line(pos, pos + Vector2(0, screen_size.y), Color(1, 1, 1, 0.2))
        # Draw right line
        pos += Vector2(TILE_SIZE - 1, 0)
        draw_line(pos, pos + Vector2(0, screen_size.y), Color(1, 1, 1, 0.2))
    for y in range(0, screen_size.y / TILE_SIZE):
        # Draw top line
        var pos = Vector2(0, y) * TILE_SIZE
        draw_line(pos, pos + Vector2(screen_size.x, 0), Color(1, 1, 1, 0.2))
        # Draw bottom line
        pos += Vector2(0, TILE_SIZE - 1)
        draw_line(pos, pos + Vector2(screen_size.x, 0), Color(1, 1, 1, 0.2))
