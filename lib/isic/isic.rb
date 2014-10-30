module Isic

  class << self
    def sections
      s = []
      File.open('files/ISIC_Rev_4_english_structure.txt').each do |line|
        md = /"([A-Z])","(.+)"/.match(line)
        s << { code: md[1], description: md[2] } if md
      end
      s
    end
  end

end