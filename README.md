# <img alt="Glimmer Tetris Icon" src="https://raw.githubusercontent.com/AndyObtiva/glimmer_snake/master/icons/linux/Glimmer%20Snake.png" height=85 /> Glimmer Snake 1.0.0
## [<img src="https://raw.githubusercontent.com/AndyObtiva/glimmer/master/images/glimmer-logo-hi-res.png" height=40 /> Glimmer DSL for LibUI Application](https://github.com/AndyObtiva/glimmer-dsl-libui)
[![Gem Version](https://badge.fury.io/rb/glimmer_snake.svg)](http://badge.fury.io/rb/glimmer_snake)

Snake game that runs on Mac, Windows, and Linux. Built with [Ruby](https://www.ruby-lang.org/) and [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui) (Prerequisite-Free Ruby Desktop Development Cross-Platform Native GUI Library) using [Application Scaffolding](https://github.com/AndyObtiva/glimmer-dsl-libui#scaffold-application).

![glimmer-dsl-libui-mac-snake.gif](/screenshots/glimmer-dsl-libui-mac-snake.gif)

## Setup

Assuming you have [Ruby](https://www.ruby-lang.org/) installed (standard MRI / CRuby).

Run:

```
gem install glimmer_snake
```

## Usage

Run:

```
glimmer_snake
```

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-snake.png](/screenshots/glimmer-dsl-libui-mac-snake.png) ![glimmer-dsl-libui-mac-snake-game-over.png](/screenshots/glimmer-dsl-libui-mac-snake-game-over.png) | ![glimmer-dsl-libui-windows-snake.png](/screenshots/glimmer-dsl-libui-windows-snake.png) ![glimmer-dsl-libui-windows-snake-game-over.png](/screenshots/glimmer-dsl-libui-windows-snake-game-over.png) | ![glimmer-dsl-libui-linux-snake.png](/screenshots/glimmer-dsl-libui-linux-snake.png) ![glimmer-dsl-libui-linux-snake-game-over.png](/screenshots/glimmer-dsl-libui-linux-snake-game-over.png)

The goal is for the green snake to eat the red apple and to survive for as long as possible. Every time it eats an apple, it grows by 1 block (the size of the apple). If the snake hits its own body (especially after enlargement), it dies.

The game remembers the highest score by storing in `~/.glimmer-snake`. You can delete that file if you want to reset the highest score.

## Development

Clone project:

```
git clone https://github.com/AndyObtiva/glimmer_snake.git
```

Change directory:

```
cd glimmer_snake
```

Install project gems with [Bundler](https://bundler.io/):

```
bundle
```

Run application with `glimmer` command:

```
glimmer run
```

Or run using included binary script:

```
bin/glimmer_snake
```

Package as a Ruby gem with `glimmer` command:

```
glimmer "package:gem"
```

Or package using equivalent direct rake command:

```
rake build
```

Generate updated gemspec with `glimmer command`:

```
glimmer "package:gemspec"
```

Or generate gemspec using equivalent direct rake command:

```
rake gemspec:generate
```

## Contributing to glimmer_snake

-   Check out the latest master to make sure the feature hasn't been
    implemented or the bug hasn't been fixed yet.
-   Check out the issue tracker to make sure someone already hasn't
    requested it and/or contributed it.
-   Fork the project.
-   Start a feature/bugfix branch.
-   Commit and push until you are happy with your contribution.
-   Make sure to add tests for it. This is important so I don't break it
    in a future version unintentionally.
-   Please try not to mess with the Rakefile, version, or history. If
    you want to have your own version, or is otherwise necessary, that
    is fine, but please isolate to its own commit so I can cherry-pick
    around it.

## TODO

[TODO.md](TODO.md)

## Change Log

[CHANGELOG.md](CHANGELOG.md)

## Copyright

[MIT](LICENSE.txt)

Copyright (c) 2023 Andy Maleh. See
[LICENSE.txt](LICENSE.txt) for further details.

--

[<img src="https://raw.githubusercontent.com/AndyObtiva/glimmer/master/images/glimmer-logo-hi-res.png" height=40 />](https://github.com/AndyObtiva/glimmer) Built with [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui) (Prerequisite-Free Ruby Desktop Development Cross-Platform Native GUI Library)

Glimmer Snake icon made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
