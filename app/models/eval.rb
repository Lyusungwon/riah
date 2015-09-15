class Eval < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :hairshop
    
    mount_uploader :image, FuploaderUploader
end
