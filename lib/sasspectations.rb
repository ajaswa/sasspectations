require "sass"
require "colorize"

require "sasspectations/version"
require "sasspectations/runner"
require "sasspectations/result_parser"
require "sasspectations/output_formatter"

require "sasspectations/engine" if defined?(Rails)

module Sasspectations; end
