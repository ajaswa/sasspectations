module Sasspectations

  class OutputFormatter

    def initialize(parser)
      @parser = parser
      @spec_results = parser.result
    end

    def display
      puts "Running Scss specs:".colorize(:cyan)
      @spec_results.each do |result|
        print result.first
      end
      puts "" # newline
      if @parser.failed?
        puts "Failed Specs:".colorize(:red)

        @spec_results.select { |r| r.first =~ /f/i }.each do |failed_result|
          puts failed_result.last.colorize(:red)
        end
      end
    end

  end

end
