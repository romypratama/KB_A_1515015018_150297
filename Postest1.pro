/*****************************************************************************
 Project:  
 FileName: Postest
 Purpose: 
 Written by: Romy Pratama (1515015018)
 Comments: 
******************************************************************************/
predicates
	nondeterm nama_nim (symbol,long,symbol)
	nondeterm a (symbol,long,symbol)
	nondeterm dosen (symbol)
	nondeterm makul (symbol)
	nondeterm mengajar (symbol,symbol)
	nondeterm mengambil (symbol,symbol)
	nondeterm smster (integer)
	
 	

clauses

		
	nama_nim (romy,1515015018,teknik_informatika).
	nama_nim (tama,1515015020,Prodi):-
		nama_nim (romy,1515015018,Prodi).
	nama_nim (pra,1515015011,ilmu_komputer).
	a (Nama,Nim,Prodi):-
	nama_nim (Nama,Nim,Prodi).
	
	dosen (jainuddin).
	dosen (jabaruddin).
	
	makul (tik).
	makul (so).
	
	
	mengambil (R,Y):-
		dosen (R),
		makul (Y),
		mengajar (R,Y),
		makul(Y). 
		
	
	mengajar (jainuddin,so).
	mengajar (jabaruddin,tik).
	mengajar (jainuddin,tik).
	
		
	
	
goal
	%nama_nim (tama,Nim,Prodi).
	%mengajar (Dosen,tik).
	%mengajar (_,Makul).
	%mengambil (jainuddin,tik).
	