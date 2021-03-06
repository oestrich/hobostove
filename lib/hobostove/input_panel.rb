module Hobostove
  class InputPanel < Panel
    def <<(string)
      @strings = []

      string = string.last(width - 4)

      super(string)
    end

    def message
      @strings.first
    end

    def update_cursor
      Ncurses.move(Ncurses.LINES - 2, message.size + 2)
    end
  end
end
