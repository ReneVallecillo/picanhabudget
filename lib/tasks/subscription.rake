require 'csv'

namespace :subscription do
  desc "Import subscribred alumnies from csv"
  task import: :environment do
    file = "db/subscription.csv"

    CSV.foreach(file, :headers => true) do |row|
      name = row['estudiante']
      name = name.split(" ")
      if name.count == 4
        dbname = name[2] + " " + name[3]
        dblastname = name[0] + " " + name[1]
      elsif name.count == 3
        dbname = name[2]
        dblastname = name[0] + " " + name[1]
      else
        dbname = name[1]
        dblastname = name[0]
      end

      school = School.find_by name:'Colegio Centro America'
      schooling = Schooling.find_by name:row['escolaridad']
      section = Section.find_by name:row['seccion']
      level = Level.find_by name:row['nivel']
      paymentmethod=PaymentMethod.find_by name:row['pago']


      row['status'] == 'Activo'? status = true : status = false
      Subscription.create({
        :name => dbname,
        :lastname => dblastname,
        :active => status,
        :section => section,
        :level => level,
        :payment_method => paymentmethod,
        :school => school,
        # :fechaingreso => fechaingreso,
        # :fechainactivo => fechainactivo
      })
    end
  end

  desc "Erase all subscribed alumnies"
  task clean: :environment do


  end

end
