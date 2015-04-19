<<<<<<< HEAD
=======
# Jeevuthan
mini project of 6th sem

>>>>>>> 83136c80cdd4024d650f9fd054d55c2ed8f6179b
JEEVUTHAN DATABASE DOCUMENTATION
====================================



CONVENTIONS USED:
===============
	*All headings are in 'uppercase' and 'underlined'
	*Entities are denoted with 'Uppercase'
	*'//' are used for comments
	* '**' denotes required fields
	*'uppercase' & '->' is used to depict primary key

	
		
BUSINESS RULES
===============
	*One User can give one location about the place where he finds injured animal.
	*A user can give information about one or more missing pet.
	*Loation of user is used as a foreign key for NGO and Vets information.


JU_USER_LOCATION //	contains the location of user where he finds injured animal
================
	->U_LOCATION



JU_NGO_INFO   //contains info about NGOs present nearby
===========
	
	->NGO_ID
	
	**NGO_name**
	**NGO_Address**
	**NGO_Contact_num**
	**NGO_Location**
	
JU_VETS_INFO   //contains info about Veterinary doctors present near user's location 
============

	->VET_ID
	
	**Vet_name**
	**Vet_address**
	**Vet_contact_num**
	**Vet_location**
	
JU_MISSING_ANIMAL_OWNER   //The person who lost his pet his info is stored in this table
=======================

	->OWNER_ID
	
	**Owner_name**
	**Owner_phone_No**
	*Owner_address
	*Owner_city
	*Owner_email_Id
	
	
	


JU_PET'S INFO //All pet related info is stored in this table
=============

	->PET_ID
	
	*Pet_name
	*Pet_image
	*Pet_type // which is the type of animal(eg:dog,cat,cow etc)
	*Pet_date_of_missing
	*Pet_height
	*Pet_breed
	*Pet_color
	
<<<<<<< HEAD
	
=======
	
>>>>>>> 83136c80cdd4024d650f9fd054d55c2ed8f6179b
