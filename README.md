# Pixel-by-Tile Movement in Godot

![](https://img.shields.io/badge/Godot-3.2-informational)

Move a character on a 16x16 pixel tile grid from cell to cell and animate movement one pixel at a time.

![](assets/pixel-by-tile.gif)

1. Restrict `_input` processing to when no movement is in progress.
2. During movement, skip `_process`/`_physics_process` passes between the times that the character moves 1px.

Resources:

- 👾 [**Play the demo online**](https://divinedominion.github.io/PixelByTileMovementGodot/)
- 📖 [Read the explanation post](https://christiantietze.de/posts/2020/06/pixel-by-tile-movement-godot/)
- Confer the [community question](https://godotengine.org/qa/28575/moving-from-tile-to-tile-in-a-grid-like-old-rpgs/)

## License

Public domain. See the [LICENSE](LICENSE) file.
