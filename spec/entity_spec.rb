require 'spec_helper'

module Isic

  describe Entity do

    describe '#classify' do

      context 'in english' do

        let(:class_classification) { Isic::Entity.new("0891").classify }
        let(:group_classification) { Isic::Entity.new("089").classify }
        let(:division_classification) { Isic::Entity.new("08").classify }
        let(:section_classification) { Isic::Entity.new("B").classify }

        it "class is classified with section, division, group and class" do
          expect(class_classification).to eq({
                                               :class => {:code => "0891", :description => "Mining of chemical and fertilizer minerals"},
                                               :group => {:code => "089", :description => "Mining and quarrying n.e.c."},
                                               :division => {:code => "08", :description => "Other mining and quarrying"},
                                               :section => {:code => "B", :description => "Mining and quarrying"}
                                             })
        end

        it "group is classified with section, division and group" do
          expect(group_classification).to eq({
                                               :group => {:code => "089", :description => "Mining and quarrying n.e.c."},
                                               :division => {:code => "08", :description => "Other mining and quarrying"},
                                               :section => {:code => "B", :description => "Mining and quarrying"}
                                             })
        end

        it "division is classified with section and division" do
          expect(division_classification).to eq({
                                                  :division => {:code => "08", :description => "Other mining and quarrying"},
                                                  :section => {:code => "B", :description => "Mining and quarrying"}
                                                })
        end

        it "section is classified with section" do
          expect(section_classification).to eq({
                                                 :section => {:code => "B", :description => "Mining and quarrying"}
                                               })
        end

      end

      context 'in spanish' do

        let(:class_classification) { Isic::Entity.new("0891").classify(translation: :es) }

        it "classifies with section, division, group and class" do
          expect(class_classification).to eq({
                                               :class => {:code => "0891", :description => "Extracción de minerales para la fabricación de abonos y productos químicos"},
                                               :group => {:code => "089", :description => "Explotación de minas y canteras n.c.p."},
                                               :division => {:code => "08", :description => "Explotación de otras minas y canteras"},
                                               :section => {:code => "B", :description => "Explotación de minas y canteras"}
                                             })
        end

      end

      context 'in french' do

        let(:class_classification) { Isic::Entity.new("0891").classify(translation: :fr) }

        it "classifies with section, division, group and class" do
          expect(class_classification).to eq({
                                               :class => {:code => "0891", :description => "Extraction de minerais pour l'industrie chimique et d'engrais naturels"},
                                               :group => {:code => "089", :description => "Activités extractives, n.c.a."},
                                               :division => {:code => "08", :description => "Autres activités extractives"},
                                               :section => {:code => "B", :description => "Activités extractives"}
                                             })
        end

      end

    end

  end

end