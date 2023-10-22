# Change Log

## 1.0.1

- Change snake direction on key press instead of key release to be more responsive for players who are not used to releasing pressed keys quickly
- Fix issue with detecting collision too soon if a snake fills the entire space horizontally or vertically
- Add unit tests for the Model layer
- Refactor `GlimmerSnake::Model::Snake` to be more readable like high-level game domain rules (especially `move` method)

## 1.0.0

- Initial Glimmer Snake implementation
