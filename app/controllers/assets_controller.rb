class AssetsController < ApplicationController
  def create
    @project = Project.find params[:project_id]
    @asset = @project.assets.build asset_params

    if @asset.save
      redirect_to @project, notice: "File was successfully uploaded."
    else
      redirect_to @project, alert: "File was not uploaded."
    end
  end

  protected

  def asset_params
    params.require(:asset).permit(:file)
  end
end
