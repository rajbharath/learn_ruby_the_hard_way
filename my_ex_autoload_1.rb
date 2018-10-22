module A
  module B; end
end

module A::C
  def module_nesting
    A::B
    puts Module.nesting
  end
  module_function :module_nesting
end

A::C.module_nesting