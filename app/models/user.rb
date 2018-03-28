class User < ApplicationRecord
  belongs_to :team

  mount_uploader :avatar, AvatarUploader
end
