module Sasspectations

  class Runner

    def initialize(root_path)
      @root_path = root_path
    end

    def render
      spec_files.map { |path| scss_file_to_css(path) }.join("\n\n")
    end

    private

    def scss_file_to_css(scss_path)
      Sass::Engine.for_file(scss_path, {syntax: :scss, style: :compact}).render
    end

    def spec_files
      Dir[specs_path_glob]
    end

    def specs_path_glob
      raise Sasspectations::SpecsNotFound unless File.exists?(@root_path)

      Pathname.new(@root_path).join('**', '*_spec.scss')
    end

  end

end
