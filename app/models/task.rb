class Task < ActiveRecord::Base
  validates :name, :presence => true
  # scope :done, -> {where(done: true)}
  # scope :not_done, -> {where(done: false)}

  def self.done
    where(done: true)
  end

  def self.not_done
    where(done: false)
  end
end
