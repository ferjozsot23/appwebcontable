package modelo.jpa;

import modelo.dao.UsuarioDAO;
import modelo.entidades.Usuario;

public class JPAUsuarioDAO extends JPAGenericDAO<Usuario, Integer> implements UsuarioDAO{

	public JPAUsuarioDAO() {
		super(Usuario.class);
	}

	@Override
	public Usuario autorizar(String nombre, String clave) {
		
		String JPQL="SELECT p FROM Usuario p WHERE p.clave= :clave AND p.nombre= :nombre";
		javax.persistence.Query query= em.createQuery(JPQL);
		query.setParameter("clave", clave);
		query.setParameter("nombre", nombre);
		Usuario persona=null;
		try {
			persona=(Usuario) query.getSingleResult();
		} catch (Exception e) {
			persona=null;
		}
		return persona;
		
		
	}
	

}
