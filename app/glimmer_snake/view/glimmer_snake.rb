require 'glimmer_snake/model/grid'

class GlimmerSnake
  module View
    class GlimmerSnake
      include Glimmer::LibUI::Application
    
      CELL_SIZE = 15
      SNAKE_MOVE_DELAY = 0.1
          
      before_body do
        @game = Model::Game.new
        @grid = Presenter::Grid.new(@game)
        @game.start
        @keypress_queue = []
      end
  
      after_body do
        register_observers
      end
  
      body {
        window {
          # data-bind window title to game score, converting it to a title string on read from the model
          title <= [@game, :score, on_read: -> (score) {"Snake (Score: #{@game.score})"}]
          content_size @game.width * CELL_SIZE, @game.height * CELL_SIZE
          resizable false
          
          vertical_box {
            padded false
            
            @game.height.times do |row|
              horizontal_box {
                padded false
                
                @game.width.times do |column|
                  area {
                    square(0, 0, CELL_SIZE) {
                      fill <= [@grid.cells[row][column], :color] # data-bind square fill to grid cell color
                    }
                    
                    on_key_up do |area_key_event|
                      if area_key_event[:key] == ' '
                        @game.toggle_pause
                      else
                        @keypress_queue << area_key_event[:ext_key]
                      end
                    end
                  }
                end
              }
            end
          }
        }
      }
  
      def register_observers
        observe(@game, :over) do |game_over|
          Glimmer::LibUI.queue_main do
            if game_over
              msg_box('Game Over!', "Score: #{@game.score} | High Score: #{@game.high_score}")
              @game.start
            end
          end
        end
        
        Glimmer::LibUI.timer(SNAKE_MOVE_DELAY) do
          unless @game.paused? || @game.over?
            process_queued_keypress
            @game.snake.move
          end
        end
      end
      
      def process_queued_keypress
        # key press queue ensures one turn per snake move to avoid a double-turn resulting in instant death (due to snake illogically going back against itself)
        key = @keypress_queue.shift
        case [@game.snake.head.orientation, key]
        in [:north, :right] | [:east, :down] | [:south, :left] | [:west, :up]
          @game.snake.turn_right
        in [:north, :left] | [:west, :down] | [:south, :right] | [:east, :up]
          @game.snake.turn_left
        else
          # No Op
        end
      end
    end
  end
end
