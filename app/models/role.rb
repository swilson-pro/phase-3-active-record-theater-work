class Role < ActiveRecord::Base
    has_many :auditions
    def actors
        auditions.pluck(:actor)
    end
    def locations
        auditions.pluck(:location)
    end
    def lead
        if auditions.where(hired: true).length > 0
            auditions.where(hired: true)[0]
        else
            'no actor has been hired for understudy for this role'
        end
    end
  end