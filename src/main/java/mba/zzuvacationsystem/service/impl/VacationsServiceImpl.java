package mba.zzuvacationsystem.service.impl;

import mba.zzuvacationsystem.mapper.VacationsMapper;
import mba.zzuvacationsystem.pojo.Vacations;
import mba.zzuvacationsystem.service.VacationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("vacationsService")
@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
public class VacationsServiceImpl implements VacationsService {

    @Autowired
    @Qualifier("vacationsMapper")
    private VacationsMapper vacationsMapper;

    @Override
    public int addVacation(Vacations vacations) {
        int result = vacationsMapper.addVacation(vacations);
        //int i = 17 / 0;
        return result;
    }

    @Override
    public int deleteVacationByVno(String vno) {
        return vacationsMapper.deleteVacationByVno(vno);
    }

    @Override
    public int updateVacationByVno(String vno, String vmno, String vstatus) {
        return vacationsMapper.updateVacationByVno(vno, vmno, vstatus);
    }

    @Override
    public List<Vacations> queryVacationsByVsno(String vsno) {
        return vacationsMapper.queryVacationsByVsno(vsno);
    }

    @Override
    public Vacations queryVacationByVno(String vno) {
        return vacationsMapper.queryVacationByVno(vno);
    }

    @Override
    public List<Vacations> queryVacations() {
        return vacationsMapper.queryVacations();
    }

    @Override
    public List<Vacations> queryVacationsByMdno(String mdno) {
        return vacationsMapper.queryVacationsByMdno(mdno);
    }

    @Override
    public List<Vacations> queryVacationsByMdnoAndStatus(String mdno) {
        return vacationsMapper.queryVacationsByMdnoAndStatus(mdno);
    }
}
