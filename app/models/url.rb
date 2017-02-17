class Url < ApplicationRecord
    require 'securerandom'
    validates :long_url, presence: { message: 'URL required' }
    validates :long_url, format: { with: URI.regexp }, uniqueness: true

    def shorten
        short_url = SecureRandom.hex(3)
    end
end
