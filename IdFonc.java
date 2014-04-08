package compilateur;
import java.util.ArrayList;
import java.util.List;

public class IdFonc extends Ident {
	
	List<Param> listeParams;
	
	public IdFonc(String nom, int typeRetour) {
		super(typeRetour,nom);
		listeParams= new ArrayList<Param>();
	}
	
	void ajoutParam(Param param)
	{
		listeParams.add(param);
	}

	public Param getParam(int i)
	{
		return listeParams.get(i);
	}
	
	public String toString()
	{
		String tmp = getNom()+" FONCTION resultat : "+getType()+ " param: ";
		for(Param e : listeParams)
		{
			tmp+= e+" ";
		}
		tmp+="\n";
		return tmp;
	}

	@Override
	public int getValeur() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setValeur(int valeur) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getForme() {
		return FONC;
	}

	@Override
	public void setOffset(int o) {
		// TODO Auto-generated method stub
	}

	@Override
	public void calculerOffset(int taille) {
		// TODO Auto-generated method stub
	}

	public List<Param> getListeParams() {
		return listeParams;
	}
	
	public int getNbParam()
	{
		return listeParams.size();
	}
	
}
