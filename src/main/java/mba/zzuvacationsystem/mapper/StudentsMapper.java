package mba.zzuvacationsystem.mapper;

import mba.zzuvacationsystem.pojo.Students;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentsMapper {
    int updateStudent(Students students);
    int addStudent(Students student);
    Students queryFromSno(String sno);
    Students queryFromSnoAndSpassword(@Param("sno") String sno, @Param("spassword") String spassword);
    List<Students> queryStudents();
}
