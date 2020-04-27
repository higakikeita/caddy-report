class Report < ApplicationRecord
  belongs_to :user
  enum bags:{
    "1bags":0,"2bags":1,"3bags":2,"4bags":3
  }
end
