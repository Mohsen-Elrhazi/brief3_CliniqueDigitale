package ma.project.brief3_cliniquedigitale.service;

import ma.project.brief3_cliniquedigitale.model.Admin;
import ma.project.brief3_cliniquedigitale.repository.AdminRepositoryImpl;

public class AdminService {
    private AdminRepositoryImpl adminRepository;

    public AdminService(){
        this.adminRepository= new AdminRepositoryImpl();
    }

    public boolean save(Admin admin){
        try{
            adminRepository.save(admin);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
