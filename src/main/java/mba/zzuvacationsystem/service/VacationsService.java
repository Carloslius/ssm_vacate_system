package mba.zzuvacationsystem.service;

import mba.zzuvacationsystem.pojo.Vacations;

import java.util.List;

public interface VacationsService {
    int addVacation(Vacations vacations);
    int deleteVacationByVno(String vno);
    int updateVacationByVno(String vno, String vmno, String vstatus);
    List<Vacations> queryVacationsByVsno(String vsno);
    Vacations queryVacationByVno(String vno);
    List<Vacations> queryVacations();
    List<Vacations> queryVacationsByMdno(String mdno);
    List<Vacations> queryVacationsByMdnoAndStatus(String mdno);
}
