module DocFrac
  class Utilities
    def self.random_string(length=10)
      string   = ''
      chars    = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ123456789'
      length.times { |i| string << chars[rand(chars.length)] }
      string
    end
  end
end