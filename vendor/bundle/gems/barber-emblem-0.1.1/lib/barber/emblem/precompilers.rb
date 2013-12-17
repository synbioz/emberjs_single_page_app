module Barber
  module Emblem
    class FilePrecompiler
      class << self
        def call(template)
          "Handlebars.template(#{compile(template)});"
        end

        def compile(template)
          Barber::Emblem::Precompiler.compile template
        end
      end
    end
  end
end
