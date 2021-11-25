package mba.zzuvacationsystem.service.impl;

import mba.zzuvacationsystem.mapper.StudentsMapper;
import mba.zzuvacationsystem.pojo.Students;
import mba.zzuvacationsystem.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("studentsService")
@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
public class StudentsServiceImpl implements StudentsService {

    @Autowired
    @Qualifier("studentsMapper")
    StudentsMapper studentsMapper;

    @Override
    public int saveStudent(Students student) {
        return studentsMapper.addStudent(student);
    }

    @Override
    public boolean isExistSno(String sno) {
        if (studentsMapper.queryFromSno(sno) != null){
            return true;
        }
        return false;
    }

    @Override
    public Students queryStudentFromSno(String sno) {
        return studentsMapper.queryFromSno(sno);
    }

    @Override
    public Students login(String sno, String spassword) {
        return studentsMapper.queryFromSnoAndSpassword(sno, spassword);
    }

    @Override
    public List<Students> queryStudents() {
        return studentsMapper.queryStudents();
    }

    @Override
    public int updateStudent(Students student) {
        return studentsMapper.updateStudent(student);
    }
}
