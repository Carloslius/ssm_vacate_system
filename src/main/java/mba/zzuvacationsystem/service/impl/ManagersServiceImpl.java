package mba.zzuvacationsystem.service.impl;

import mba.zzuvacationsystem.mapper.ManagersMapper;
import mba.zzuvacationsystem.pojo.Managers;
import mba.zzuvacationsystem.service.ManagersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("managersService")
@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
public class ManagersServiceImpl implements ManagersService {

    @Autowired
    @Qualifier("managersMapper")
    private ManagersMapper managersMapper;
    @Override

    public int register(Managers manager) {
        return managersMapper.addManager(manager);
    }

    @Override
    public boolean isExistMno(String mno) {
        if (managersMapper.queryFromMno(mno) != null){
            return true;
        }
        return false;
    }

    @Override
    public Managers login(String mno, String mname) {
        return managersMapper.queryFromMnoAndMpassword(mno, mname);
    }
}
