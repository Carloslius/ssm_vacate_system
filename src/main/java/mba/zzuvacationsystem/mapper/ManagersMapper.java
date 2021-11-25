package mba.zzuvacationsystem.mapper;

import mba.zzuvacationsystem.pojo.Managers;
import org.apache.ibatis.annotations.Param;

public interface ManagersMapper {
    int addManager(Managers manager);
    Managers queryFromMno(String mno);
    Managers queryFromMnoAndMpassword(@Param("mno") String mno, @Param("mpassword") String mpassword);
}
