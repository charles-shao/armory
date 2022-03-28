module Import
  class UnitsController < ApplicationController

    def index; end

    def create
      if params[:file].blank?
        flash[:warning] = "No file submitted."
        return redirect_to import_units_path
      end

      # TODO: Move file upload process to S3
      file_path = File.join(Rails.root, "tmp", "storage", "unit_data_#{Time.current.strftime('%Y%m%d%H%M%S')}")
      File.write(file_path, params[:file].read)

      ImportUnitsJob.perform_later(file_path)

      flash[:info] = "Successfully uploaded data for processing."
      redirect_to import_units_path
    end
  end
end
