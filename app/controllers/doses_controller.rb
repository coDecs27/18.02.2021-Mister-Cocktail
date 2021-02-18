class DosesController < ApplicationController
  def new
    @dose = dose.new
  end

  def create
    @dose = dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render "new"
    end
  end

private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
