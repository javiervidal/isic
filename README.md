# Isic

The International Standard Industrial Classification (ISIC) is a United Nations system for classifying economic data.

The classification is based in four hierarchical levels: sections, divisions, groups and classes.

This gem allows to classify an entity based on its ISIC code.

## Installation

Add this line to your application's Gemfile:

    gem 'isic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install isic

## Usage

Given an ISIC code, find its place in the hierarchy:

    > Isic::Entity.new("0891").classify
    {
      :section => { :code => "B", :description => "Mining and quarrying" },
      :division => { :code => "08", :description => "Other mining and quarrying" },
      :group => { :code => "089", :description => "Mining and quarrying n.e.c." },
      :class => { :code => "0891", :description => "Mining of chemical and fertilizer minerals" }
    }

Find all the sections:

    > Isic.sections
    [
      {:code=>"A", :description=>"Agriculture, forestry and fishing"},
      {:code=>"B", :description=>"Mining and quarrying"},
      {:code=>"C", :description=>"Manufacturing"}
      {:code=>"D", :description=>"Electricity, gas, steam and air conditioning supply"},
      {:code=>"E", :description=>"Water supply; sewerage, waste management and remediation activities"},
      {:code=>"F", :description=>"Construction"},
      {:code=>"G", :description=>"Wholesale and retail trade; repair of motor vehicles and motorcycles"},
      {:code=>"H", :description=>"Transportation and storage"},
      {:code=>"I", :description=>"Accommodation and food service activities"},
      {:code=>"J", :description=>"Information and communication"},
      {:code=>"K", :description=>"Financial and insurance activities"},
      {:code=>"L", :description=>"Real estate activities"},
      {:code=>"M", :description=>"Professional, scientific and technical activities"},
      {:code=>"N", :description=>"Administrative and support service activities"},
      {:code=>"O", :description=>"Public administration and defence; compulsory social security"},
      {:code=>"P", :description=>"Education"}, {:code=>"Q", :description=>"Human health and social work activities"},
      {:code=>"R", :description=>"Arts, entertainment and recreation"},
      {:code=>"S", :description=>"Other service activities"},
      {:code=>"T", :description=>"Activities of households as employers; undifferentiated goods- and services-producing activities of households for own use"},
      {:code=>"U", :description=>"Activities of extraterritorial organizations and bodies"}
    ]

Find all the divisions of the "B" section:

    > Isic.divisions(section: "B")
    [
      {:code=>"05", :description=>"Mining of coal and lignite"},
      {:code=>"06", :description=>"Extraction of crude petroleum and natural gas"},
      {:code=>"07", :description=>"Mining of metal ores"},
      {:code=>"08", :description=>"Other mining and quarrying"},
      {:code=>"09", :description=>"Mining support service activities"}
    ]

Find all the groups of the "08" division:

    > Isic.groups(division: "08")
    [
      {:code=>"081", :description=>"Quarrying of stone, sand and clay"},
      {:code=>"089", :description=>"Mining and quarrying n.e.c."}
    ]

Find all the classes of the "089" group:

    > Isic.classes(group: "089")
    [
      {:code=>"0891", :description=>"Mining of chemical and fertilizer minerals"},
      {:code=>"0892", :description=>"Extraction of peat"},
      {:code=>"0893", :description=>"Extraction of salt"},
      {:code=>"0899", :description=>"Other mining and quarrying n.e.c."}
    ]

## Translations

Descriptions are returned in English by default, but Spanish and French are supported. In any of the methods above you can specify the translation:

    > Isic::Entity.new("0891").classify(translation: :es)
    {
      :class=>{:code=>"0891", :description=>"Extracción de minerales para la fabricación de abonos y productos químicos"},
      :group=>{:code=>"089", :description=>"Explotación de minas y canteras n.c.p."},
      :division=>{:code=>"08", :description=>"Explotación de otras minas y canteras"},
      :section=>{:code=>"B", :description=>"Explotación de minas y canteras"}
    }

    > Isic.groups(division: "08", translation: :fr)
    [
      {:code=>"081", :description=>"Extraction de pierres, de sables et d'argiles"},
      {:code=>"089", :description=>"Activités extractives, n.c.a."}
    ]


## Contributing

1. Fork it ( http://github.com/javiervidal/isic/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
