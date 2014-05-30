# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = CreateAdminService.new.call
puts 'Created Admin User : ' << user.email


schools = School.create([{name:'Colegio Centro America'}])
puts 'Created Schools'
schoolings = Schooling.create([{name: 'Preescolar'},{name: 'Primaria'},
  {name: 'Secundaria'}])
puts 'Created Schooling'

levels = Level.create([
    { name: 'I Nivel',schooling:schoolings.first},
    { name: 'II Nivel', schooling:schoolings.first},
    { name: 'III Nivel',schooling:schoolings.first},
    { name: '1er Grado',schooling:schoolings[1] },
    { name: '2do Grado',schooling:schoolings[1] },
    { name: '3er Grado',schooling:schoolings[1] },
    { name: '4to Grado',schooling:schoolings[1] },
    { name: '5to Grado',schooling:schoolings[1] },
    { name: '6to Grado',schooling:schoolings[1] },
    { name: '1er Año',schooling:schoolings.last },
    { name: '2do Año',schooling:schoolings.last },
    { name: '3er Año',schooling:schoolings.last },
    { name: '4to Año',schooling:schoolings.last },
    { name: '5to Año',schooling:schoolings.last }
  ])
puts 'Created Levels'

sections = Section.create([
    {name: 'A'}, {name: 'B'}, {name:'C'}, {name:'D'}, {name:'E'}
  ])
puts 'Created Sections'

paymentmethod = PaymentMethod.create([
    {name: 'Colegio'}, {name: 'Privado'},{name: 'Gratisasc'}
  ])
puts 'Created Payment Methods'
