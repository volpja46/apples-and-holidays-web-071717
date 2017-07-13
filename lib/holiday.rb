require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
 holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_supplies[:spring][:memorial_day] << supply


end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
# remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidayz|
          puts "#{season.to_s.capitalize}:"
         holidayz.each do |holiday, supplies|
            cap_holiday = holiday.to_s.split('_').each {|i| i.capitalize!}.join(' ')
            puts "  #{cap_holiday}: #{supplies.join(', ')}"
            end
       end

def all_holidays_with_bbq(holiday_hash)
      bbq_array = []
     holiday_hash.each do |season, holiday_names|
              holiday_names.each do |holiday, supplies|
                    if supplies.include?("BBQ")
                         bbq_array << holiday
                     end
              end
      end
  bbq_array
end		  end








