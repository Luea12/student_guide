# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#g = Group.create(:group_no => "244", :major => "INFO")
#s = Student.new(:first_name => "Cristina", :last_name => "Badic")
#g.students << s
#s.save
#c = Course.new(:name => "Baze de date", :room => "201", :teacher_last_name => "Benegui", :teacher_first_name => "Cezara", :start_time => "08:00", :end_time => "11:00", :day => "Luni", :kind => "Laborator", :frequency => "saptamanal")
#c.save


###### GRUPELE AN 2 ######

g = Group.create(:group_no => 201,
				 :major    => "MATE-INFO")

g = Group.create(:group_no => 211,
				 :major    => "MATE-INFO")

g = Group.create(:group_no => 212,
				 :major    => "MATE-INFO")

g = Group.create(:group_no => 221,
				 :major    => "MATE APL.")

g = Group.create(:group_no => 222,
				 :major    => "MATE APL.")

g = Group.create(:group_no => 231,
				 :major    => "INFO")

g = Group.create(:group_no => 232,
				 :major    => "INFO")

g = Group.create(:group_no => 233,
				 :major    => "INFO")

g = Group.create(:group_no => 234,
				 :major    => "INFO")

g = Group.create(:group_no => 235,
				 :major    => "INFO")

g = Group.create(:group_no => 241,
				 :major    => "INFO")

g = Group.create(:group_no => 242,
				 :major    => "INFO")

g = Group.create(:group_no => 243,
				 :major    => "INFO")

g = Group.create(:group_no => 244,
				 :major    => "INFO")

g = Group.create(:group_no => 251,
				 :major    => "CTI")

g = Group.create(:group_no => 252,
				 :major    => "CTI")

g = Group.create(:group_no => 253,
				 :major    => "CTI")

g = Group.create(:group_no => 254,
				 :major    => "CTI")


#### CURSURI ####

c = Course.new(:name               => "AnComplexa", 
			   :room               => "8", 
			   :teacher_last_name  => "Speranta", 
			   :teacher_first_name => "Vladoiu", 
			   :start_time         => "14:00", 
			   :end_time           => "16:00", 
			   :day                => "Luni", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Geometrie", 
			   :room               => "10", 
			   :teacher_last_name  => "Liviu", 
			   :teacher_first_name => "Ornea", 
			   :start_time         => "16:00", 
			   :end_time           => "18:00", 
			   :day                => "Luni", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Mecanica", 
			   :room               => "1(Stoillow)", 
			   :teacher_last_name  => "Victor", 
			   :teacher_first_name => "Tigoiu", 
			   :start_time         => "10:00", 
			   :end_time           => "12:00", 
			   :day                => "Marti", 
			   :kind               => "Curs", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "TeoriaNr", 
			   :room               => "5", 
			   :teacher_last_name  => "A", 
			   :teacher_first_name => "Gica", 
			   :start_time         => "12:00", 
			   :end_time           => "14:00", 
			   :day                => "Marti", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "TeoriaNr", 
			   :room               => "9", 
			   :teacher_last_name  => "A", 
			   :teacher_first_name => "Gica", 
			   :start_time         => "10:00", 
			   :end_time           => "12:00", 
			   :day                => "Miercuri", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Mecanica", 
			   :room               => "305", 
			   :teacher_last_name  => "Victor", 
			   :teacher_first_name => "Tigoiu", 
			   :start_time         => "12:00", 
			   :end_time           => "14:00", 
			   :day                => "Miercuri", 
			   :kind               => "Seminar", 
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "Mecanica", 
			   :room               => "L-321", 
			   :teacher_last_name  => "Liviu", 
			   :teacher_first_name => "Marin", 
			   :start_time         => "12:00", 
			   :end_time           => "14:00", 
			   :day                => "Miercuri", 
			   :kind               => "Laborator", 
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "Probabilitati", 
			   :room               => "215(Alg)", 
			   :teacher_last_name  => "Ionel", 
			   :teacher_first_name => "Popescu", 
			   :start_time         => "14:00", 
			   :end_time           => "16:00", 
			   :day                => "Miercuri", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "AnComplexa", 
			   :room               => "2(Pompeiu)", 
			   :teacher_last_name  => "M", 
			   :teacher_first_name => "Cristea", 
			   :start_time         => "12:00", 
			   :end_time           => "14:00", 
			   :day                => "Joi", 
			   :kind               => "Curs", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Probabilitati", 
			   :room               => "2(Pompeiu)", 
			   :teacher_last_name  => "Ionel", 
			   :teacher_first_name => "Popescu", 
			   :start_time         => "14:00", 
			   :end_time           => "16:00", 
			   :day                => "Joi", 
			   :kind               => "Curs", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Geometrie", 
			   :room               => "10", 
			   :teacher_last_name  => "L", 
			   :teacher_first_name => "Ornea", 
			   :start_time         => "16:00", 
			   :end_time           => "18:00", 
			   :day                => "Joi", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Algebra", 
			   :room               => "2(Pompeiu)", 
			   :teacher_last_name  => "G", 
			   :teacher_first_name => "Militaru", 
			   :start_time         => "14:00", 
			   :end_time           => "16:00", 
			   :day                => "Vineri", 
			   :kind               => "Curs", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Algebra", 
			   :room               => "3", 
			   :teacher_last_name  => "G", 
			   :teacher_first_name => "Militaru", 
			   :start_time         => "16:00", 
			   :end_time           => "18:00", 
			   :day                => "Vineri", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "LFA [sapt 1-7]", 
			   :room               => "219", 
			   :teacher_last_name  => "Maria", 
			   :teacher_first_name => "Negru", 
			   :start_time         => "16:00", 
			   :end_time           => "18:00", 
			   :day                => "Luni", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "LbForm&Autom", 
			   :room               => "2(Pompeiu)", 
			   :teacher_last_name  => "Daniel-Claudian", 
			   :teacher_first_name => "Voinescu", 
			   :start_time         => "18:00", 
			   :end_time           => "20:00", 
			   :day                => "Luni", 
			   :kind               => "Curs", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "POO", 
			   :room               => "2(Pompeiu)", 
			   :teacher_last_name  => "Andrei", 
			   :teacher_first_name => "Paun", 
			   :start_time         => "08:00", 
			   :end_time           => "10:00", 
			   :day                => "Marti", 
			   :kind               => "Curs", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "POO", 
			   :room               => "201(BD)", 
			   :teacher_last_name  => "Gh", 
			   :teacher_first_name => "Sima", 
			   :start_time         => "10:00", 
			   :end_time           => "12:00", 
			   :day                => "Marti", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "BD", 
			   :room               => "201(BD)", 
			   :teacher_last_name  => "Cezara", 
			   :teacher_first_name => "Benegui", 
			   :start_time         => "12:00", 
			   :end_time           => "14:00", 
			   :day                => "Marti", 
			   :kind               => "Laborator", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "BD", 
			   :room               => "L-321", 
			   :teacher_last_name  => "Cezara", 
			   :teacher_first_name => "Benegui", 
			   :start_time         => "14:00", 
			   :end_time           => "16:00", 
			   :day                => "Marti", 
			   :kind               => "Laborator", 
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "BD", 
			   :room               => "L-321", 
			   :teacher_last_name  => "Cezara", 
			   :teacher_first_name => "Benegui", 
			   :start_time         => "14:00", 
			   :end_time           => "16:00", 
			   :day                => "Marti", 
			   :kind               => "Laborator", 
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "AnComplexa", 
			   :room               => "8", 
			   :teacher_last_name  => "Speranta", 
			   :teacher_first_name => "Vladoiu", 
			   :start_time         => "08:00", 
			   :end_time           => "10:00", 
			   :day                => "Miercuri", 
			   :kind               => "Seminar", 
			   :frequency          => "Saptamanal")
c.save

c = Course.new(:name               => "Probabilitait", 
			   :room               => "3", 
			   :teacher_last_name  => "I", 
			   :teacher_first_name => "Cimpean", 
			   :start_time         => "10:00", 
			   :end_time           => "12:00", 
			   :day                => "Miercuri", 
			   :kind               => "Seminar", 
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "POO", 
			   :room               => "216", 
			   :teacher_last_name  => "D", 
			   :teacher_first_name => "Cheptea", 
			   :start_time         => "10:00", 
			   :end_time           => "12:00", 
			   :day                => "Joi", 
			   :kind               => "Seminar", 
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "BD",
			   :room               => "1(Stoillow)",
			   :teacher_last_name  => "Le",
			   :teacher_first_name => "Marin",
			   :start_time         => "10:00",
			   :end_time           => "12:00",
			   :day                => "Vineri",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Algebra",
			   :room               => "12",
			   :teacher_last_name  => "F",
			   :teacher_first_name => "Besleaga",
			   :start_time         => "12:00",
			   :end_time           => "14:00",
			   :day                => "Vineri",
			   :kind               => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "LbForm&Autom",
			   :room               => "L-322",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Cristea",
			   :start_time         => "16:00",
			   :end_time           => "18:00",
			   :day                => "Vineri",
			   :kind               => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "AnComplexa",
			   :room               => "8",
			   :teacher_last_name  => "S",
			   :teacher_first_name => "Vladoiu",
			   :start_time         => "16:00",
			   :end_time           => "18:00",
			   :day                => "Luni",
			   :kind               => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "POO",
			   :room               => "216",
			   :teacher_last_name  => "D",
			   :teacher_first_name => "Cheptea",
			   :start_time         => "10:00",
			   :end_time           => "12:00",
			   :day                => "Marti",
			   :kind               => "Seminar",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "LFA[sapt 1-7]",
			   :room               => "5",
			   :teacher_last_name  => "M",
			   :teacher_first_name => "Negru",
			   :start_time         => "10:00",
			   :end_time           => "12:00",
			   :day                => "Marti",
			   :kind               => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "POO",
			   :room               => "L-308",
			   :teacher_last_name  => "Gh",
			   :teacher_first_name => "Sima",
			   :start_time         => "12:00",
			   :end_time           => "14:00",
			   :day                => "Marti",
			   :kind               => "Laborator",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "LFA[sapt 1-7]",
			   :room               => "219",
			   :teacher_last_name  => "M",
			   :teacher_first_name => "Negru",
			   :start_time         => "14:00",
			   :end_time           => "16:00",
			   :day                => "Marti",
			   :kind               => "Seminar",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "BD",
			   :room               => "L-321",
			   :teacher_last_name  => "Le",
			   :teacher_first_name => "Marin",
			   :start_time         => "10:00",
			   :end_time           => "12:00",
			   :day                => "Miercuri",
			   :kind               => "Laborator",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "BD",
			   :room               => "L-321",
			   :teacher_last_name  => "Le",
			   :teacher_first_name => "Marin",
			   :start_time         => "10:00",
			   :end_time           => "12:00",
			   :day                => "Miercuri",
			   :kind               => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "Probabilitati",
			   :room               => "3",
			   :teacher_last_name  => "I",
			   :teacher_first_name => "Cimpean",
			   :start_time         => "12:00",
			   :end_time           => "14:00",
			   :day                => "Miercuri",
			   :kind               => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Algebra",
			   :room               => "8",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Dinu",
			   :start_time         => "14:00",
			   :end_time           => "16:00",
			   :day                => "Miercuri",
			   :kind               => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "BD",
			   :room               => "201(BD)",
			   :teacher_last_name  => "Le",
			   :teacher_first_name => "Marin",
			   :start_time         => "12:00",
			   :end_time           => "14:00",
			   :day                => "Vineri",
			   :kind               => "Seminar",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "LbForm&Autom",
			   :room               => "L-322",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Cristea",
			   :start_time         => "16:00",
			   :end_time           => "18:00",
			   :day                => "Vineri",
			   :kind               => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "Mecanica",
			   :room 			   => "L-321",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Pascan",
			   :start_time 		   => "08:00",
			   :end_time           => "10:00",
			   :day				   => "Marti",
			   :kind 			   => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "Probabilitati",
			   :room 			   => "8",
			   :teacher_last_name  => "E",
			   :teacher_first_name => "Paraicu",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day				   => "Miercuri",
			   :kind 			   => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Mecanica",
			   :room 			   => "305",
			   :teacher_last_name  => "V",
			   :teacher_first_name => "Tigoiu",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day				   => "Joi",
			   :kind 			   => "Seminar",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "SoftMatem",
			   :room 			   => "L-321",
			   :teacher_last_name  => "I",
			   :teacher_first_name => "Munteanu",
			   :start_time 		   => "08:00",
			   :end_time           => "10:00",
			   :day				   => "Vineri",
			   :kind 			   => "Laborator",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "SoftMatem",
			   :room 			   => "219",
			   :teacher_last_name  => "I",
			   :teacher_first_name => "Munteanu",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day				   => "Vineri",
			   :kind 			   => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Mecanica",
			   :room 			   => "L-321",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Pascan",
			   :start_time 		   => "08:00",
			   :end_time           => "10:00",
			   :day				   => "Marti",
			   :kind 			   => "Laborator",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "Probabilitati",
			   :room 			   => "8",
			   :teacher_last_name  => "E",
			   :teacher_first_name => "Paraicu",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day				   => "Miercuri",
			   :kind 			   => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "AnComplexa",
			   :room 			   => "219",
			   :teacher_last_name  => "O",
			   :teacher_first_name => "Preda",
			   :start_time 		   => "14:00",
			   :end_time           => "16:00",
			   :day				   => "Miercuri",
			   :kind 			   => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Algebra",
			   :room 			   => "9",
			   :teacher_last_name  => "L",
			   :teacher_first_name => "Filimon",
			   :start_time 		   => "16:00",
			   :end_time           => "18:00",
			   :day				   => "Miercuri",
			   :kind 			   => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "Mecanica",
			   :room 			   => "305",
			   :teacher_last_name  => "V",
			   :teacher_first_name => "Tigoiu",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day				   => "Joi",
			   :kind 			   => "Seminar",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "SoftMatem",
			   :room 			   => "L-321",
			   :teacher_last_name  => "I",
			   :teacher_first_name => "Munteanu",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day				   => "Vineri",
			   :kind 			   => "Laborator",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "SoftMatem",
			   :room 			   => "219",
			   :teacher_last_name  => "I",
			   :teacher_first_name => "Munteanu",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day				   => "Vineri",
			   :kind 			   => "Seminar",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "ProgLogica",
			   :room 			   => "2(Pompeiu)",
			   :teacher_last_name  => "I",
			   :teacher_first_name => "Leustean",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day                => "Luni",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "ProgLogica",
			   :room 			   => "L-309",
			   :teacher_last_name  => "B",
			   :teacher_first_name => "Dumitru",
			   :start_time 		   => "16:00",
			   :end_time           => "18:00",
			   :day                => "Vineri",
			   :kind               => "Laborator",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "ProgLogica",
			   :room 			   => "12",
			   :teacher_last_name  => "B",
			   :teacher_first_name => "Dumitru",
			   :start_time 		   => "16:00",
			   :end_time           => "18:00",
			   :day                => "Vineri",
			   :kind               => "Seminar",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "IA[sapt 8-14]",
			   :room 			   => "L-308",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Ionescu",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day                => "Marti",
			   :kind               => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "IA[sapt 1-7]",
			   :room 			   => "3(Titeica)",
			   :teacher_last_name  => "F",
			   :teacher_first_name => "Hristea",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day                => "Marti",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "IA[sapt 8-14]",
			   :room 			   => "3(Titeica)",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Ionescu",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day                => "Marti",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "ReteleCalc",
			   :room 			   => "L-309",
			   :teacher_last_name  => "S",
			   :teacher_first_name => "Nisioi",
			   :start_time 		   => "14:00",
			   :end_time           => "16:00",
			   :day                => "Marti",
			   :kind               => "Laborator",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "IA[sapt 8-14]",
			   :room 			   => "L-310",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Ionescu",
			   :start_time 		   => "16:00",
			   :end_time           => "18:00",
			   :day                => "Marti",
			   :kind               => "Laborator",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "IA[sapt 1-7]",
			   :room 			   => "L-308",
			   :teacher_last_name  => "C",
			   :teacher_first_name => "Noaica",
			   :start_time 		   => "16:00",
			   :end_time           => "18:00",
			   :day                => "Marti",
			   :kind               => "Laborator",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "IA[sapt 8-14]",
			   :room 			   => "L-310",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Ionescu",
			   :start_time 		   => "16:00",
			   :end_time           => "18:00",
			   :day                => "Marti",
			   :kind               => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "ProgAvOb",
			   :room 			   => "L-308",
			   :teacher_last_name  => "L",
			   :teacher_first_name => "Spilca",
			   :start_time 		   => "18:00",
			   :end_time           => "20:00",
			   :day                => "Marti",
			   :kind               => "Laborator",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "MetDezvSoft",
			   :room 			   => "L-322",
			   :teacher_last_name  => "M",
			   :teacher_first_name => "Prunescu",
			   :start_time 		   => "08:00",
			   :end_time           => "10:00",
			   :day                => "Miercuri",
			   :kind               => "Laborator",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "MetDezvSoft",
			   :room 			   => "3(Titeica)",
			   :teacher_last_name  => "A",
			   :teacher_first_name => "Stefanescu",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day                => "Miercuri",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "IA [sapt 1-7]",
			   :room 			   => "L-303",
			   :teacher_last_name  => "Maria",
			   :teacher_first_name => "Negru",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day                => "Miercuri",
			   :kind               => "Laborator",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "BD",
			   :room 			   => "201(BD)",
			   :teacher_last_name  => "G",
			   :teacher_first_name => "Mihai",
			   :start_time 		   => "08:00",
			   :end_time           => "10:00",
			   :day                => "Joi",
			   :kind               => "Laborator",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "BD",
			   :room 			   => "201(BD)",
			   :teacher_last_name  => "G",
			   :teacher_first_name => "Mihai",
			   :start_time 		   => "08:00",
			   :end_time           => "10:00",
			   :day                => "Joi",
			   :kind               => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "BD",
			   :room 			   => "201(BD)",
			   :teacher_last_name  => "G",
			   :teacher_first_name => "Mihai",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day                => "Joi",
			   :kind               => "Seminar",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "BD",
			   :room 			   => "201(BD)",
			   :teacher_last_name  => "G",
			   :teacher_first_name => "Mihai",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day                => "Joi",
			   :kind               => "Seminar",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "ProgAvOb",
			   :room 			   => "0(Haret)",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Boriga",
			   :start_time 		   => "12:00",
			   :end_time           => "14:00",
			   :day                => "Joi",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "BD",
			   :room 			   => "201(BD)",
			   :teacher_last_name  => "G",
			   :teacher_first_name => "Mihai",
			   :start_time 		   => "14:00",
			   :end_time           => "16:00",
			   :day                => "Joi",
			   :kind               => "Seminar",
			   :frequency             => "Par")
c.save

c = Course.new(:name               => "BD",
			   :room 			   => "201(BD)",
			   :teacher_last_name  => "G",
			   :teacher_first_name => "Mihai",
			   :start_time 		   => "14:00",
			   :end_time           => "16:00",
			   :day                => "Joi",
			   :kind               => "Seminar",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "IA[sapt 8-14]",
			   :room 			   => "L-218",
			   :teacher_last_name  => "R",
			   :teacher_first_name => "Ionescu",
			   :start_time 		   => "16:00",
			   :end_time           => "18:00",
			   :day                => "Joi",
			   :kind               => "Laborator",
			   :frequency             => "Impar")
c.save

c = Course.new(:name               => "BD",
			   :room 			   => "1(Stoilow)",
			   :teacher_last_name  => "Le",
			   :teacher_first_name => "Marin",
			   :start_time 		   => "08:00",
			   :end_time           => "10:00",
			   :day                => "Vineri",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save

c = Course.new(:name               => "ReteleCalc",
			   :room 			   => "2(Pompeiu)",
			   :teacher_last_name  => "L",
			   :teacher_first_name => "Dinu",
			   :start_time 		   => "10:00",
			   :end_time           => "12:00",
			   :day                => "Vineri",
			   :kind               => "Curs",
			   :frequency             => "Saptamanal")
c.save
#### OPTIONALELE ####

o = Optional.new(:name               => "Franceza",
				 :room               => "8",
				 :teacher_first_name => "B",
				 :teacher_last_name  => "Bordea",
				 :start_time         => "10:00",
				 :end_time           => "12:00",
				 :day                => "Luni",
				 :kind               => "Curs",
				 :frequency             => "Saptamanal",)
o.save
				 
o = Optional.new(:name               => "DidacticaSpec",
				 :room               => "219",
				 :teacher_first_name => "G",
				 :teacher_last_name  => "Mincu",
				 :start_time         => "16:00",
				 :end_time           => "18:00",
				 :day                => "Marti",
				 :kind               => "Curs",
				 :frequency             => "Par",)
o.save			

o = Optional.new(:name               => "DidacticaInfo",
				 :room               => "220",
				 :teacher_first_name => "M",
				 :teacher_last_name  => "Tataram",
				 :start_time         => "14:00",
				 :end_time           => "16:00",
				 :day                => "Miercuri",
				 :kind               => "Curs",
				 :frequency             => "Par",)
o.save	

o = Optional.new(:name               => "DidacticaInfo",
				 :room               => "220",
				 :teacher_first_name => "M",
				 :teacher_last_name  => "Tataram",
				 :start_time         => "16:00",
				 :end_time           => "18:00",
				 :day                => "Miercuri",
				 :kind               => "Curs",
				 :frequency             => "Impar",)
o.save

o = Optional.new(:name               => "DidacticaInfo",
				 :room               => "220",
				 :teacher_first_name => "M",
				 :teacher_last_name  => "Tataram",
				 :start_time         => "18:00",
				 :end_time           => "20:00",
				 :day                => "Miercuri",
				 :kind               => "Curs",
				 :frequency             => "Par",)
o.save

o = Optional.new(:name               => "Robotica",
				 :room               => "3(Titeica)",
				 :teacher_first_name => "A",
				 :teacher_last_name  => "Dumitriu",
				 :start_time         => "18:00",
				 :end_time           => "21:00",
				 :day                => "Miercuri",
				 :kind               => "Curs",
				 :frequency             => "Impar",)
o.save

o = Optional.new(:name               => "DidacticaSpec",
				 :room               => "219",
				 :teacher_first_name => "C",
				 :teacher_last_name  => "Volca",
				 :start_time         => "08:00",
				 :end_time           => "10:00",
				 :day                => "Joi",
				 :kind               => "Laborator",
				 :frequency             => "Impar",)
o.save

o = Optional.new(:name               => "DidacticaSpec",
				 :room               => "0(Haret)",
				 :teacher_first_name => "G",
				 :teacher_last_name  => "Mincu",
				 :start_time         => "18:00",
				 :end_time           => "20:00",
				 :day                => "Joi",
				 :kind               => "Curs",
				 :frequency             => "Par",)
o.save

o = Optional.new(:name               => "Engleza",
				 :room               => "9",
				 :teacher_first_name => "D",
				 :teacher_last_name  => "Ionita",
				 :start_time         => "08:00",
				 :end_time           => "16:00",
				 :day                => "Vineri",
				 :kind               => "Curs",
				 :frequency             => "Saptamanal",)
o.save