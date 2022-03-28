class ImportUnitsJob < ApplicationJob
  queue_as :default

  def perform(file_path)
    sleep(5); # For demo purposes

    result = JSON.parse(File.read(file_path))
    ActiveRecord::Base.transaction do
      result["models"].each do |model_data|
        model = Model.create(
          name: model_data["name"],
          category: model_data["category"].downcase,
          min_size: model_data["min_size"],
          max_size: model_data["max_size"]
        )

        model_data["units"].each do |unit_data|
          unit = model.units.create(unit_data.except("weapons"))

          unit_data["weapons"].each do |weapon_data|
            unit.weapons.create(weapon_data)
          end
        end
      end
    end

    ActionCable.server.broadcast("FileUploadStatusChannel", { body: { message: "File successfully processed.", alert: :success } })
  end
end
