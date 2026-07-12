package springmvc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

import springmvc.model.Register;

@Repository
public class RegisterDao {

//	@Autowired
//	private SessionFactory sessionFactory;
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional(readOnly = true)
	public boolean isEmailExists(String email) {
//		Session session = sessionFactory.getCurrentSession();
//
//		Query<Register> query = session.createQuery("from Register where email = :email", Register.class);
//		query.setParameter("email", email);
//
//		return !query.getResultList().isEmpty();
		
		return hibernateTemplate.execute(session->{
			Query<Register> query = session.createQuery("from Register where email = :email", Register.class);
			query.setParameter("email", email);
			
			return !query.getResultList().isEmpty();
		});
	}

	@Transactional(readOnly = true)
	public boolean isMobileExists(long mobile) {
//		Session session = sessionFactory.getCurrentSession();
//
//		Query<Register> query = session.createQuery("from Register where mobile = :mobile", Register.class);
//		query.setParameter("mobile", mobile);
//
//		return !query.getResultList().isEmpty();
		return hibernateTemplate.execute(session->{
			Query<Register> query = session.createQuery("from Register where mobile = :mobile", Register.class);
			query.setParameter("mobile", mobile);
			
			return !query.getResultList().isEmpty();
		});
	}

	@Transactional(readOnly = true)
	public boolean isAccountNumberExists(String accountnumber) {
//		Session session = sessionFactory.getCurrentSession();
//
//		Query<Register> query = session.createQuery("from Register where accountnumber = :accountnumber",
//				Register.class);
//		query.setParameter("accountnumber", accountnumber);
//
//		return !query.getResultList().isEmpty();

		return hibernateTemplate.execute(session->{
			Query<Register> query = session.createQuery("from Register where accountnumber = :accountnumber", Register.class);
			query.setParameter("accountnumber", accountnumber);
			
			return !query.getResultList().isEmpty();
		});
	}

	public int save(Register register) {
//		Session session = sessionFactory.getCurrentSession();
//		return (Integer) session.save(register);
		Integer r = (Integer) this.hibernateTemplate.save(register);
		return r;
	}

}
