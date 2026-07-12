package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.RegisterDao;
import springmvc.model.Register;

@Service
@Transactional
public class RegisterService {

	@Autowired
	public RegisterDao registerDao;
	
	public boolean isEmailExists(String email) {
		return this.registerDao.isEmailExists(email);		
	};

	public boolean isMobileExists(long mobile) {
		return this.registerDao.isMobileExists(mobile);
	};

	public boolean isAccountNumberExists(String accountNumber) {
		return this.registerDao.isAccountNumberExists(accountNumber);
	};

	public int create(Register register) {
		return this.registerDao.save(register);
	}
}
