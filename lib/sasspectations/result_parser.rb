module Sasspectations

  class ResultParser

    attr_accessor :result

    # Assumes one spec result per line
    #
    def initialize(css_output)
      @css_output = css_output
    end

    def parse
      spec_lines = @css_output.split("\n").reject! &:empty?
      @result = spec_lines.map do |spec_line|
        if spec_line =~ /{\s*expect\s?:\s?true[;]?\s?}/
          [".".colorize(:green), spec_line]
        else
          ["F".colorize(:red), spec_line]
        end
      end
    end

    def failed?
      @result.any? { |r| r.first =~ /f/i }
    end

  end

end
