# coding: utf-8

module Swift
  def replace(line)
    replaced_line = replacePrintln(line)
    return replaced_line
  end
  
  def replacePrintln(line)
    line.gsub(/println\(/, 'print(')
  end
end
