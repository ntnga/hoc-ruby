require 'csv'
module Lib_files
  #phương thức đọc file
  def read_file(filename)
    chuoi = ""
    IO.foreach(filename){|block| chuoi += block}
      return chuoi
  end
  #phương thức bao cao  file
  def read_report_file(filename)
    arr = IO.readlines(filename)
    line = 0 #or line = arr.size
    word = 0
    char = 0
    for item in arr
      char += item.size # so ky tu tren 1 dong
      word += item.split(" ").size #so tu tren 1 dong
      line += 1
    end
    return line, word, char
  end
  #phương thức ghi de file
  def write_file(filename, content)
    f1 = File.new(filename, "w")
    if f1
      f1.syswrite(content)
      puts "Đã ghi nội dung"
    else
      puts "Không mở được tập tin này"      
    end
  end
  #phương thức ghi them noi dung
  def write_file_append(filename, content)
    f1 = File.new(filename, "a")
    if f1
      f1.syswrite(content + "\n")
      puts "Đã ghi thêm nội dung"
    else
      puts "Không mở được tập tin này"
    end 
  end
  
  def read_file_csv(filename)
    arr_of_arrs = CSV.read(filename)
    return arr_of_arrs
  end
  
  def write_csv_file(filename, content)
    CSV.open(filename,"ab") do |csv|
      csv<<content
    end
  end
end