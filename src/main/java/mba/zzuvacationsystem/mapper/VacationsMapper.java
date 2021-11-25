package mba.zzuvacationsystem.mapper;

import mba.zzuvacationsystem.pojo.Vacations;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VacationsMapper {
    int addVacation(Vacations vacations);
    int deleteVacationByVno(String vno);
    int updateVacationByVno(@Param("vno") String vno, @Param("vmno") String vmno, @Param("vstatus") String vstatus);
    List<Vacations> queryVacationsByVsno(String vsno);
    Vacations queryVacationByVno(String vno);
    List<Vacations> queryVacations();
    List<Vacations> queryVacationsByMdno(String mdno);
    List<Vacations> queryVacationsByMdnoAndStatus(String mdno);
}
