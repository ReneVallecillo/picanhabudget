# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = CreateAdminService.new.call
puts 'Created Admin User : ' << user.email


schools = School.create({name:'Colegio Centro America'})
schoolings = Schooling.create({name: 'Preescolar'},{name: 'Primaria'},
  {name: 'Secundaria'})
levels = Level.create(
    { name: 'I nivel',scholling:schoolings.first},
    { name: 'II nivel', scholling:schoolings.first},
    { name: 'III nivel',scholling:schoolings.first},
    { name: '1er grado',scholling:schoolings[1] },
    { name: '2do grado',scholling:schoolings[1] },
    { name: '3er grado',scholling:schoolings[1] },
    { name: '4to grado',scholling:schoolings[1] },
    { name: '5to grado',scholling:schoolings[1] },
    { name: '6to grado',scholling:schoolings[1] },
    { name: '1er año',scholling:schoolings.last },
    { name: '2do año',scholling:schoolings.last },
    { name: '3er año',scholling:schoolings.last },
    { name: '4to año',scholling:schoolings.last },
    { name: '5to año',scholling:schoolings.last }
  })

sections = Section.create({
    {name: 'A'}, {name: 'B'}, {name:'C'}, {name:'D'}, {name:'E'}
  })

paymentmethod = PaymentMethod.create({
    {name: 'Colegio'}, {name: 'Privado'},{name: 'Gratisasc'}
  })
