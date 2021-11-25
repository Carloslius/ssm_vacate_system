package mba.zzuvacationsystem.service;

import mba.zzuvacationsystem.pojo.Students;

import java.util.List;

public interface StudentsService {
    int saveStudent(Students student);
    boolean isExistSno(String sno);
    Students queryStudentFromSno(String sno);
    Students login(String sno, String spassword);
    List<Students> queryStudents();
    int updateStudent(Students student);
}
