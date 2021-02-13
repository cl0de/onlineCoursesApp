class Course < ApplicationRecord
     
     has_many :episodes #, class_name: "episode", foreign_key: "reference_id", dependent: :destroy
    mount_uploader :image, ImageUploader

    validate :image_size


    private
        # Validates the size of an uploaded image
        def image_size
            if image.size > 5.megabytes
                errors.add(:image, 'Should be less than 5MB')
            end
        end
end
