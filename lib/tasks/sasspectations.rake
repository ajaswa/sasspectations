$:.unshift(File.expand_path('../..', __FILE__)) unless $:.include? File.expand_path('../..', __FILE__)

require 'sasspectations'

desc 'Run SCSS specs'
task :sasspectations, :path do |t, args|
  path = Pathname.new(Dir.pwd).join(args[:path] || 'spec/scss').to_s

  runner = Sasspectations::Runner.new(path)
  begin
    parser = Sasspectations::ResultParser.new(runner.render)
  rescue Sasspectations::SpecsNotFound
    puts 'Path provided is not valid, please check your path and try again.'
    exit 1
  end

  output_formatter = Sasspectations::OutputFormatter.new(parser.tap(&:parse))
  output_formatter.display
  exit 1 if parser.failed?
end
