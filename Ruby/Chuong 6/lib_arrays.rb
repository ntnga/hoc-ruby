module Lib_arrays
  def tao_mang_ngau_nhien(n)
    arr = Array.new()
    i = 0
    while i < n
      arr<<rand(1..30)
      i += 1
    end
    return arr
  end
end