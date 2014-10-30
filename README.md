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

    $ i = Isic.new("0891")
    $ i.classify
    { :section => { :code => "A", :description => "Agriculture, forestry and fishing" },
      :division => { :code => "08", :description => "Other mining and quarrying" },
      :group => { :code => "089", :description => "Mining and quarrying n.e.c." },
      :class => { :code => "0891", :description => "Mining of chemical and fertilizer minerals" }
    }

Find all the sections:

    $ Isic.sections

Find all the divisions of the "A" section:

    $ Isic.divisions(section: "A")

Find all the groups of the "08" division:

    $ Isic.groups(division: "08")

Find all the classes of the "089" group:

    $ Isic.groups(division: "089")

## Contributing

1. Fork it ( http://github.com/javiervidal/isic/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
