class Report < ApplicationRecord
  belongs_to :user
  enum bags:{
  "1bags":1,"2bags":2,"3bags":3,"4bags":4
  }

  # scope :bags, ->(bags){where(bags: bags).order(created_at: "DESC").limit(10)}
  # def self.search(search)
  #   return Report.all unless search
  #   Report.where(created_at: 1.day.ago.all_day,)
  # end
end
