class Photos::BagsController < BagsController
  before_action :set_bagable

  private

  def set_bagable
    @bagable = Photo.find(params[:photo_id])
  end

end
