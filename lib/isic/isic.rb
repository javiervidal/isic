class Isic

  DIVISIONS = {}
  DIVISIONS['A'] = %w( 01 02 03 )
  DIVISIONS['B'] = %w( 05 06 07 08 09 )
  DIVISIONS['C'] = %w( 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 )
  DIVISIONS['D'] = %w( 35 )
  DIVISIONS['E'] = %w( 36 37 38 39 )
  DIVISIONS['F'] = %w( 41 42 43 )
  DIVISIONS['G'] = %w( 45 46 47 )
  DIVISIONS['H'] = %w( 49 50 51 52 53 )
  DIVISIONS['I'] = %w( 55 56 )
  DIVISIONS['J'] = %w( 58 59 60 61 62 63 )
  DIVISIONS['K'] = %w( 64 65 66 )
  DIVISIONS['L'] = %w( 68 )
  DIVISIONS['M'] = %w( 69 70 71 72 73 74 75 )
  DIVISIONS['N'] = %w( 77 78 79 80 81 82 )
  DIVISIONS['O'] = %w( 84 )
  DIVISIONS['P'] = %w( 85 )
  DIVISIONS['Q'] = %w( 86 87 88 )
  DIVISIONS['R'] = %w( 90 91 92 93 )
  DIVISIONS['S'] = %w( 94 95 96 )
  DIVISIONS['T'] = %w( 97 98 )
  DIVISIONS['U'] = %w( 99 )

  class << self

    def sections(options = {})
      translation = options[:translation] || :en
      Search.new('[A-Z]', translation: translation).all
    end

    def divisions(options = {})
      translation = options[:translation] || :en
      if options[:section] && DIVISIONS.keys.include?(options[:section])
        code = DIVISIONS[options[:section]].join('|')
        Search.new(code, translation: translation).all
      else
        []
      end
    end

    def groups(options = {})
      parse(:division, 2, options)
    end

    def classes(options = {})
      parse(:group, 3, options)
    end

    def parse(symbol, digits, options = {})
      translation = options[:translation] || :en
      if options[symbol] && Regexp.new("\\d{#{digits}}").match(options[symbol])
        code = "#{options[symbol]}\\d"
        Search.new(code, translation: translation).all
      else
        []
      end
    end

  end

  private_class_method :parse

end