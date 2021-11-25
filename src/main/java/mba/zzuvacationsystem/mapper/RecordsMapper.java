package mba.zzuvacationsystem.mapper;

import mba.zzuvacationsystem.pojo.Records;

import java.util.List;

public interface RecordsMapper {
    int addRecord(Records records);
    int deleteRecordByRno(String rno);
    List<Records> queryRecordByRsno(String rsno);
    Records queryRecordByRno(String rno);
    List<Records> queryRecords();
    List<Records> queryRecordsByMdno(String mdno);
}
