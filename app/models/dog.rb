class Dog < ApplicationRecord
  has_many :employees

  def get_image
    response = HTTParty.get('https://dog.ceo/api/breeds/image/random')
    response.parsed_response["message"]
  end
end
