class Eval < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :hairshop
    
    mount_uploaders :images, FuploaderUploader
end
