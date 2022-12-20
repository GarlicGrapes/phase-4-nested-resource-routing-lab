class User < ApplicationRecord
  has_many :items

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end
end
