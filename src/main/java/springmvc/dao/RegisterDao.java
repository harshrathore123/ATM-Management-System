package springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Register;

@Repository
public class RegisterDao {

	//Create HibernateTemplate Class Object
	//Because we are using Spring ORM + Hibernate
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int save(Register register) {
		Integer res = (Integer)this.hibernateTemplate.save(register);
		return res;
	}
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public RegisterDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
	
	
}
