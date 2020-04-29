class Report < ApplicationRecord
  belongs_to :user
  enum bags:{
    "1bags":0,"2bags":1,"3bags":2,"4bags":3
  }
  scope :bags, ->(subject) {where(bags: bags).order(created_at: "DESC").limit(10)}
  # def self.search(search)
  #   return Report.all unless search
  #   Report.where(created_at: 1.day.ago.all_day,)
  # end
end
