class CreateAppointmentAndGroomerTables < ActiveRecord::Migration[5.2]
  def change
    create_table :groomers do | table | 
      table.string :name
      table.string :address
    end
    create_table :appointments do | table | 
      table.belongs_to :dog
      table.belongs_to :groomer
    end
  end
end
