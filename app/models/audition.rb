class Audition < ActiveRecord::Base
  belongs_to :role
  def call_back
    self.hired = true
    self.save!
    # self.update(hire: true)
  end
end