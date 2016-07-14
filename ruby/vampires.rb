#vampire detection employee processing form
employee_num = 0
puts "New Employee Questionnaire"
puts "How many employees will be processed today?"
employees = gets.chomp.to_i

while employee_num < employees

	puts "What is your name?"
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.chomp.to_i
	
	puts "What year were you born in?"
	birth_year = gets.chomp.to_i
	
	#way to compare birth year with age
	current_year = 2016
	calc_age = current_year - birth_year
	
	#age check
	if calc_age != age 
		age_correct = false
	else
		age_correct = true
	end
	
	puts "Do you like garlic bread? (y/n)"
	g_bread = gets.chomp.downcase
	#turn input into boolean
	case g_bread
		when 'y'
			g_bread = true 
		when 'n'
			g_bread = false
		end
	
	puts "Would you like to sign up for health insurance? (y/n)"
	h_ins = gets.chomp.downcase
	#turn input into boolean
	case h_ins
		when 'y'
			h_ins = true
		when 'n'
			h_ins = false 
		end
		
	#Vamp conditions check 
	result = case
	
		#Fast fail conditions check
		when name == "Drake Cula" || name == "Tu Fang" then 
			"Definitely a vampire"
		
		else
			vamp_check = true
			result = case
				when vamp_check = age_correct && ( g_bread || h_ins ) then 
				"Probably not a vampire."
				when vamp_check = !age_correct && ( g_bread || h_ins) then
			    "Probably a vampire"
			    when vamp_check = !age_correct && ( !g_bread && !h_ins ) then
			    	 "Almost certainly a vampire" 
			    else
			    	"Results inconclusive"
			    end
		end
		
	employee_num += 1
	
	allergies = ""
	 puts "Please list your allergies. Type 'done' when finished"		
 						
 	#allergy question asking loop
 	allergy = []
 	until allergies == "done" ; "sunshine"		
 		allergies = gets.chomp.downcase		
 		allergy << allergies
 		if allergies.index('sunshine')
 			result = "Probably a vampire."
 			break
 		end
  	end			

puts result

end
puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
