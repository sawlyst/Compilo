import java.util.HashMap;
import java.util.Iterator;

public class TabIdent {
	private HashMap<String, IdFonc> global;
	private HashMap<String, Ident> local;
	private int offset = 0;
	
	public TabIdent(){
		global = new HashMap<String, IdFonc>();
		local = new HashMap<String, Ident>();
	}

	public Ident chercheIdent(String clef) {
		if (local.get(clef)!=null)
			return local.get(clef);
		else
			return global.get(clef);
	}
	
	public IdFonc chercheFonction(String nom)
	{
		return global.get(nom);
	}
	
	public int nombreParametresFonction(String nom) {
		return chercheFonction(nom).getListeParams().size();
	}

	public boolean existeIdent(String clef) {
		return local.containsKey(clef) | global.containsKey(clef);
	}

	public boolean existeIdentLocal(String clef) {
		return local.containsKey(clef);
	}

	public boolean existeIdentGlobal(String clef) {
		return global.containsKey(clef);
	}

	public void rangeIdent(String clef, Ident id,int modifOffset) {
		offset += modifOffset;
		id.setOffset(offset);
		local.put(clef, id);
	}
	
	public void rangeIdent(String clef, Ident id) {
		local.put(clef, id);
	}
	
	public void rangeFonction(String clef, IdFonc fonc)
	{
		global.put(clef,fonc);
	}
	
	public void calculerOffsetParam(int taille) {
		Iterator<Ident> i = local.values().iterator();
		while (i.hasNext()) {
			i.next().calculerOffset(taille);
		}
	}
	
	public int getValeurIdent(String nomIdent, Token tok)
	{
		Ident i = chercheIdent(nomIdent);
		int val = 0;
		try
		{
			val = i.getValeur();
		}
		catch (Exception e)
		{
			System.out.println("ERREUR (l. "+tok.beginLine+"): L'identifiant "+nomIdent+" n'est pas declare");
		}
		
		return val;
	}
	
	public int nombreVariable() {
		int compteur = 0;
		
		Iterator<Ident> i = local.values().iterator();
		while (i.hasNext()) {
			if(i.next().getForme() == Ident.VAR) {
				compteur++;
			}
		}
		
		return compteur;
	}
	
	public void videLocal()
	{
		local.clear();
		offset = 0;
	}
	
	public void ecrireDebug()
	{
		System.out.println(global + " \n"+local);
	}
	
}