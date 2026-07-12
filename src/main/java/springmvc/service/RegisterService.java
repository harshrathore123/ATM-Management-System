package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.event.TransactionalEventListener;

import springmvc.dao.RegisterDao;
import springmvc.model.Register;

@Service
public class RegisterService {

	@Autowired
	public RegisterDao registerDao;
	
	@TransactionalEventListener
	public int create(Register register) {
		return this.registerDao.save(register);
	}
}
