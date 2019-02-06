
require 'pry'
def get_first_name_of_season_winner(data, season)
  
data.each do |seasons, information|
	if season == seasons
#binding.pry

	 information.each do |list|
	 	#binding.pry
	 	list.each do |key, value|
	#binding.pry
 	if key == "name"
	 		#binding.pry
	 		return value.split(" ")[0]
	 	end
	 	end
end
 end
end
end



def get_contestant_name(data, occupation)
  data.each do |seasons, information|
#binding.pry
information.each do |list|
	#binding.pry
	list.each do |key, value|
#binding.pry
if key == "occupation"
#binding.pry
if occupation == value
	#inding.pry
	return list["name"]
	#binding.pry
end
	end

end
end
end
end

  

def count_contestants_by_hometown(data, hometown)
  
counter = 0
 data.each do |seasons, information|
 	#binding.pry
    information.each do |list|
    	#binding.pry
      if list["hometown"] == hometown
        counter+=1
      end 
  end 
 end 
 return counter 


  # code here
end

def get_occupation(data, hometown)
  
data.each do |seasons, information|
	#binding.pry
	information.each do|list|
		#binding.pry
		if list["hometown"] == hometown
			return list["occupation"]
end
end
end
end

# code here

def get_average_age_for_season(data, season)
  
  average_age = 0
  total_age = 10 
  #num_of_contestants = 0
 num_of_contestants = data[season].length
  data.each do |seasons, information|
  #binding.pry
  	
    if season == seasons
    #binding.pry
      information.each do |list|
     # 	binding.pry
         
          total_age += list["age"].to_i
      #   binding.pry
       end
     end
   end 
average_age = (total_age/num_of_contestants)
 end 