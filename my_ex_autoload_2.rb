module A
  module B; end
  module C
    module D
      def print_nesting
        puts B
        puts Module.nesting
      end

      module_function :print_nesting
    end
  end
end

A::C::D.print_nesting