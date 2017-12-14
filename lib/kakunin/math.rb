module Kakunin
  class Math
    def initialize(min: 10, max: 99, input: STDIN, output: STDOUT)
      @min = min
      @max = max
      @input = input
      @output = output
    end

    def value
      Random.rand(@min..@max)
    end

    def ask
      x = value
      y = value

      @output << "#{x} + #{y} = "

      result = Integer(@input.gets.strip)

      (x + y == result) || (raise "wrong answer, #{x} + #{y} != #{result}")
    end
  end
end
