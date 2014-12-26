class Owner
   
   def name
      Rails.logger.debug 'DEBUG: entering Owner.name'
      name = 'Kerveros Mukalela'
      Rails.logger.debug 'DEBUG: exiting Owner.name'
      return name
   end
   
   def birthdate
      Rails.logger.debug 'DEBUG: entering Owner.birthday'
      birthdate = Date.new(1982, 07, 30)
      Rails.logger.debug 'DEBUG: exiting Owner.birthday'
      return birthdate
   end
   
   def countdown
      Rails.logger.debug 'DEBUG: entering Owner.countdown'
      today = Date.today
      birthday = Date.new(today.year, birthdate.month, birthdate.day)
      
      if birthday > today
         countdown = (birthday - today).to_i
      else
         countdown = (birthday.next_year - today).to_i
      end

      Rails.logger.debug 'DEBUG: exiting Owner.countdown'
      return countdown
      
   end
end