module Sass::Script::Functions
  module SasspectationsMatchers

    def to_equal(actual, expected)
      if expected.value == actual.value
        pass
      else
        actual
      end
    end

    def to_not_equal(actual, expected)
      if expected.value != actual.value
        pass
      else
        actual
      end
    end

    # def to_almost_equal(actual, expected, variance=0.5)
      # if (actual.value-expected.value) <= variance.value
        # pass
      # else
        # actual
      # end
    # end

    def to_greater_than(big, small)
      if big.value > small.value
        pass
      else
        big
      end
    end

    def to_less_than(small, big)
      if small.value < big.value
        pass
      else
        small
      end
    end

    def to_contain(search, string)
      if string.value.include? search.value
        pass
      else
        search
      end
    end

    def to_not_contain(search, string)
      if !string.value.include? search.value
        pass
      else
        search
      end
    end

    def to_divisible_by(base, divisible_by )
      if base.value % divisible_by.value == 0
        pass
      else
        base
      end
    end

    def to_factor_of()
      # TODO: 
    end


    def to_be_odd(base)
      if base.value % 2 != 0
        pass
      else
        base
      end
    end

    def to_be_even(base)
      if base.value % 2 == 0
        pass
      else
        base
      end
    end

    def to_in_range(number, start_range, end_range)
      if (number.value <= end_range.value) && (number.value >= start_range.value)
        pass
      else
        number
      end
    end

    private

    def pass
      Sass::Script::Bool.new(true)
    end

  end


  include SasspectationsMatchers
end

