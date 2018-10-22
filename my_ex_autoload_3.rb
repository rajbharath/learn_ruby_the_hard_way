class A
  def get_c; puts C if defined?(C); end
end

class  B < A
  module C; end
end

B.new.get_c