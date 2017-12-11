class Comment < ApplicationRecord
 belongs_to :user
  belongs_to :product
  	scope :rating_desc, -> { order(rating: :desc) }
scope :rating_asc, -> { order(rating: :asc) }

private

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end
end