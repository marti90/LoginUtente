package service;

import model.Utente;
import dao.UtenteDAO;

public class ServizioLogin {
	
	//boolean UtenteIsValid
	
	//Utente getUtenteConUsername
	
	//getTuttiUtenti
	
	UtenteDAO uDao = new UtenteDAO();
	
	public boolean registraUtente(String nome, String cognome, String username, String password){
		
		boolean res = false;
		Utente u = new Utente(nome,cognome,username,password);
		res = uDao.createUtente(u);
		
		return res;
	}
	
	public boolean esisteUtente(String username, String password){
		
		boolean res = false;
		Utente u = uDao.readUtente(username, password);
		if(u!=null){
			res = true;
		}
		
		return res;
	}

}
