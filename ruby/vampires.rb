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
				
			puts "What year were you born?"
			birth_year = gets.chomp.to_i
			current_year = 2016
			age_reported = current_year - birth_year
			# need to account for data that will be submitted if people haven't had a birthday yet.

			puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
			garlic_bread = gets.chomp.downcase
			
			case garlic_bread
				when 'y'
				garlic_bread = true
				when 'n'
				garlic_bread = false
			end
				
			puts "Would you like to enroll in the company's health insurance? (Y/N)"
			insurance = gets.chomp.downcase
			
			case insurance 
				when 'y'
				insurance = true
				when 'n'
				insurance = false
			end
				
		# Vampire conditions check				
		# Fast fail name check	
		if name == "Drake Cula" || name == "Tu Fang"
			vamp_check = "Definitely a vampire."
		else

						
			if (age_reported != 2016 - birth_year) || (age_reported != 2016 - (birth_year + 1))
				age_reported = false
			else 
				age_reported = true
			end
		
				if age_reported  && garlic_bread || insurance
					vamp_check = "Probably not a vampire."
				end
				
				if !age_reported && (!garlic_bread || !insurance)
					vamp_check = "Probably a vampire. Eek!"
				end
				
				if !age_reported && !garlic_bread  && !insurance
					vamp_check = "Almost certainly a vampire! Halp!!"
				end
				
			

			if vamp_check == "Probably not a vampire." || vamp_check == "Probably a vampire. Eek!" || vamp_check == "Almost certainly a vampire! Halp!!" || vamp_check == "Definitely a vampire."
				vamp_check = vamp_check
			else
				vamp_check = "Results inconclusive."
			end			
			
			puts "Please list your allergies. Type 'done' when finished"
			allergies = ""
				
				#allergy question asking loop
				until allergies == "done" || allergies == "sunshine"
					allergies = gets.chomp.downcase
					if allergies == "sunshine"
						vamp_check = "Probably a vampire."
					elsif allergies == "done"
							puts "Allergies noted."
					else
						puts "Is that all?"
					end
				end
				# end of allergy asking loop
		end
			employee_num += 1
	puts vamp_check
	end

puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."