require 'spec_helper'

module Isic

  describe 'Isic.sections' do

    context 'when english' do

      let(:sections) { Isic.sections }
      let(:divisions) { Isic.divisions(section: "B") }
      let(:groups) { Isic.groups(division: "08") }
      let(:classes) { Isic.classes(group: "089") }

      it 'returns all the sections in english' do
        expect(sections).to eq([{:code => "A", :description => "Agriculture, forestry and fishing"}, {:code => "B", :description => "Mining and quarrying"}, {:code => "C", :description => "Manufacturing"}, {:code => "D", :description => "Electricity, gas, steam and air conditioning supply"}, {:code => "E", :description => "Water supply; sewerage, waste management and remediation activities"}, {:code => "F", :description => "Construction"}, {:code => "G", :description => "Wholesale and retail trade; repair of motor vehicles and motorcycles"}, {:code => "H", :description => "Transportation and storage"}, {:code => "I", :description => "Accommodation and food service activities"}, {:code => "J", :description => "Information and communication"}, {:code => "K", :description => "Financial and insurance activities"}, {:code => "L", :description => "Real estate activities"}, {:code => "M", :description => "Professional, scientific and technical activities"}, {:code => "N", :description => "Administrative and support service activities"}, {:code => "O", :description => "Public administration and defence; compulsory social security"}, {:code => "P", :description => "Education"}, {:code => "Q", :description => "Human health and social work activities"}, {:code => "R", :description => "Arts, entertainment and recreation"}, {:code => "S", :description => "Other service activities"}, {:code => "T", :description => "Activities of households as employers; undifferentiated goods- and services-producing activities of households for own use"}, {:code => "U", :description => "Activities of extraterritorial organizations and bodies"}])
      end

      it 'returns all the divisions of the B section in english' do
        expect(divisions).to eq([{:code => "05", :description => "Mining of coal and lignite"}, {:code => "06", :description => "Extraction of crude petroleum and natural gas"}, {:code => "07", :description => "Mining of metal ores"}, {:code => "08", :description => "Other mining and quarrying"}, {:code => "09", :description => "Mining support service activities"}])
      end

      it 'returns all the groups of the 08 division in english' do
        expect(groups).to eq([{:code => "081", :description => "Quarrying of stone, sand and clay"}, {:code => "089", :description => "Mining and quarrying n.e.c."}])
      end

      it 'returns all the classes of the 089 group in english' do
        expect(classes).to eq([{:code => "0891", :description => "Mining of chemical and fertilizer minerals"}, {:code => "0892", :description => "Extraction of peat"}, {:code => "0893", :description => "Extraction of salt"}, {:code => "0899", :description => "Other mining and quarrying n.e.c."}])
      end

    end

    context 'when spanish' do

      let(:sections) { Isic.sections(translation: :es) }
      let(:divisions) { Isic.divisions(section: "B",translation: :es) }
      let(:groups) { Isic.groups(division: "08", translation: :es) }
      let(:classes) { Isic.classes(group: "089", translation: :es) }

      it 'returns all the sections in english' do
        expect(sections).to eq([{:code=>"A", :description=>"Agricultura, ganadería, silvicultura y pesca"}, {:code=>"B", :description=>"Explotación de minas y canteras"}, {:code=>"C", :description=>"Industrias manufactureras"}, {:code=>"D", :description=>"Suministro de electricidad, gas, vapor y aire acondicionado"}, {:code=>"E", :description=>"Suministro de agua; evacuación de aguas residuales, gestión de desechos y descontaminación"}, {:code=>"F", :description=>"Construcción"}, {:code=>"G", :description=>"Comercio al por mayor y al por menor; reparación de vehículos automotores y motocicletas"}, {:code=>"H", :description=>"Transporte y almacenamiento"}, {:code=>"I", :description=>"Actividades de alojamiento y de servicio de comidas"}, {:code=>"J", :description=>"Información y comunicaciones"}, {:code=>"K", :description=>"Actividades financieras y de seguros"}, {:code=>"L", :description=>"Actividades inmobiliarias"}, {:code=>"M", :description=>"Actividades profesionales, científicas y técnicas"}, {:code=>"N", :description=>"Actividades de servicios administrativos y de apoyo"}, {:code=>"O", :description=>"Administración pública y defensa; planes de seguridad social de afiliación obligatoria"}, {:code=>"P", :description=>"Enseñanza"}, {:code=>"Q", :description=>"Actividades de atención de la salud humana y de asistencia social"}, {:code=>"R", :description=>"Actividades artísticas, de entretenimiento y recreativas"}, {:code=>"S", :description=>"Otras actividades de servicios"}, {:code=>"T", :description=>"Actividades de los hogares como empleadores; actividades no diferenciadas de los hogares como productores de bienes y servicios para uso propio"}, {:code=>"U", :description=>"Actividades de organizaciones y órganos extraterritoriales"}])
      end

      it 'returns all the divisions of the B section in english' do
        expect(divisions).to eq([{:code=>"05", :description=>"Extracción de carbón de piedra y lignito"}, {:code=>"06", :description=>"Extracción de petróleo crudo y gas natural"}, {:code=>"07", :description=>"Extracción de minerales metalíferos"}, {:code=>"08", :description=>"Explotación de otras minas y canteras"}, {:code=>"09", :description=>"Actividades de servicios de apoyo para la explotación de minas y canteras"}])
      end

      it 'returns all the groups of the 08 division in english' do
        expect(groups).to eq([{:code=>"081", :description=>"Extracción de piedra, arena y arcilla"}, {:code=>"089", :description=>"Explotación de minas y canteras n.c.p."}])
      end

      it 'returns all the classes of the 089 group in english' do
        expect(classes).to eq([{:code=>"0891", :description=>"Extracción de minerales para la fabricación de abonos y productos químicos"}, {:code=>"0892", :description=>"Extracción de turba"}, {:code=>"0893", :description=>"Extracción de sal"}, {:code=>"0899", :description=>"Explotación de otras minas y canteras n.c.p."}])
      end

    end

    context 'when french' do

      let(:sections) { Isic.sections(translation: :fr) }
      let(:divisions) { Isic.divisions(section: "B",translation: :fr) }
      let(:groups) { Isic.groups(division: "08", translation: :fr) }
      let(:classes) { Isic.classes(group: "089", translation: :fr) }

      it 'returns all the sections in english' do
        expect(sections).to eq([{:code=>"A", :description=>"Agriculture, sylviculture et pêche"}, {:code=>"B", :description=>"Activités extractives"}, {:code=>"C", :description=>"Activités de fabrication"}, {:code=>"D", :description=>"Production et distribution d'électricité, de gaz, de vapeur et climatisation"}, {:code=>"E", :description=>"Distribution d'eau; réseau d'assainissement; gestion des déchets et activités de remise en état"}, {:code=>"F", :description=>"Construction"}, {:code=>"G", :description=>"Commerce de gros et de détail, réparations de véhicules automobiles et de motocycles"}, {:code=>"H", :description=>"Transport et entreposage"}, {:code=>"I", :description=>"Activités d'hébergement et de restauration"}, {:code=>"J", :description=>"Information et communication"}, {:code=>"K", :description=>"Activités financières et d'assurances"}, {:code=>"L", :description=>"Activités immobilières"}, {:code=>"M", :description=>"Activités professionnelles, scientifiques et techniques"}, {:code=>"N", :description=>"Activités de services administratifs et d'appui"}, {:code=>"O", :description=>"Administration publique et défense; sécurité sociale obligatoire"}, {:code=>"P", :description=>"Éducation"}, {:code=>"Q", :description=>"Santé et et activités d'action sociale"}, {:code=>"R", :description=>"Arts, spectacles et loisirs"}, {:code=>"S", :description=>"Autres activités de services"}, {:code=>"T", :description=>"Activités des ménages privés employant du personnel domestique; activités non différenciées de production de biens et de services des ménages privés pour usage propre"}, {:code=>"U", :description=>"Activités des organisations et organismes extra-territoriaux"}])
      end

      it 'returns all the divisions of the B section in english' do
        expect(divisions).to eq([{:code=>"05", :description=>"Extraction de charbon et de lignite"}, {:code=>"06", :description=>"Extraction de pétrole brut et de gaz naturel"}, {:code=>"07", :description=>"Extraction de minerais métalliques"}, {:code=>"08", :description=>"Autres activités extractives"}, {:code=>"09", :description=>"Activités annexes de l'extraction"}])
      end

      it 'returns all the groups of the 08 division in english' do
        expect(groups).to eq([{:code=>"081", :description=>"Extraction de pierres, de sables et d'argiles"}, {:code=>"089", :description=>"Activités extractives, n.c.a."}])
      end

      it 'returns all the classes of the 089 group in english' do
        expect(classes).to eq([{:code=>"0891", :description=>"Extraction de minerais pour l'industrie chimique et d'engrais naturels"}, {:code=>"0892", :description=>"Extraction de tourbe"}, {:code=>"0893", :description=>"Extraction de sel"}, {:code=>"0899", :description=>"Autres activités extractives, n.c.a."}])
      end

    end

  end

end