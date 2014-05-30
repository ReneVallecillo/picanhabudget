namespace :subscription do
  desc "Import subscribred alumnies from csv"
  task import: :environment do
    file = "db/subscription.csv"

    CSV.foreach(file, :headers => true) do |row|
      name = row['Estudiante']
      name.split(" ")
      if name.count == 4
        dbname = name[2] + " " + name[3]
        dblastname = name[0] + " " + name[1]
      elsif name_length == 3
        dbname = name[2]
        dblastname = name[0] + " " + name[1]
      else
        dbname = name[1]
        dblastname = name[0]
      end

      row['status'] == 'Activo'? status = true : status = false
      Subscription.create({
        :name => dbname,
        :lastname => dblastname,
        :active => status,
        :grade => grade,
        :section => section,
        :level => level,
        :paymentmethod => paymentmethod,
        :school => school,
        :fechaingreso => fechaingreso,
        :fechainactivo => fechainactivo
      })

    end
  end

  desc "Erase all subscribed alumnies"
  task clean: :environment do


  end

end
