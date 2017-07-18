import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import br.com.caelum.JpaConfigurator;
import br.com.caelum.model.Produto;

public class TestaCache {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new AnnotationConfigApplicationContext(JpaConfigurator.class);
		
		EntityManagerFactory entityManagerFactory = ctx.getBean(EntityManagerFactory.class);
		
		EntityManager em = entityManagerFactory.createEntityManager();
		
		//Produto p1 = em.find(Produto.class, 1);
		//System.out.println(p1.getNome());
		
		Produto p2 = em.find(Produto.class, 1);
		System.out.println(p2.getNome());
		
	}

}
