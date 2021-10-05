MMputs "CREATION DE L'USER"
user = User.new
user.email = "michel.staumont@wanadoo.fr"
user.password = "Montaisut1948"
user.save
puts "CREATION DU PROFILE"
profile = Profile.new
profile.last_name = "STAUMONT"
profile.first_name = "Michel"
profile.rue = "25 rue du cateau"
profile.postcode = "59550"
profile.pays = "France"
profile.phone = "0661526441"
profile.statut = "admin"
profile.user = user
profile.ville = "Fontaine au bois"
profile.save
