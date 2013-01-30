$:.unshift(File.expand_path('../..', __FILE__)) unless $:.include? File.expand_path('../..', __FILE__)

require 'sasspectations'

namespace :sasspectations do
  desc 'Run SCSS specs'
  task :run, :path do |t, args|
    path   = Pathname.new(Dir.pwd).join(args[:path] || '.').to_s
    runner = Sasspectations::Runner.new(path)

    # Parsing *then* displaying the results won't provide continuous feedback
    # for large test suites. This parsing operation will be fairly quick no
    # matter what, so it doesn't seem to be a problem, but may want to
    # reconsider this later
    #
    parser = Sasspectations::ResultParser.new(runner.render)
    output_formatter = Sasspectations::OutputFormatter.new(parser.tap(&:parse))
    output_formatter.display
    exit 1 if parser.failed?
  end
end
