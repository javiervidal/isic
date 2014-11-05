module Isic
  class Search

    FILES = {
      en: 'files/ISIC_Rev_4_english_structure.txt',
      es: 'files/ISIC_Rev_4_spanish_structure.txt',
      fr: 'files/ISIC_Rev_4_french_structure.txt'
    }

    def initialize(regexp, translation: :en)
      @regexp = regexp
      @file = FILES[translation]
    end

    def all
      entities = []
      File.open(@file).each do |line|
        md = /"(#{@regexp})","(.+)"/.match(line)
        entities << { code: md[1], description: md[2] } if md
      end
      entities
    end

    def first
      all.first
    end

  end
end