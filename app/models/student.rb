class Student < ActiveRecord::Base
   validates :first_name,:last_name,:email, presence: true
      validates :first_name,:last_name,       length: { minimum: 5 }
      validates :phone, :presence => true, format: { with: /\A\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})\Z/,
    message: "Number must be in xxx-xxx-xxxx format" }

end
