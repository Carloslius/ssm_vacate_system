package mba.zzuvacationsystem.service.impl;

import mba.zzuvacationsystem.mapper.RecordsMapper;
import mba.zzuvacationsystem.pojo.Records;
import mba.zzuvacationsystem.service.RecordsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("recordsService")
@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
public class RecordsServiceImpl implements RecordsService {

    @Autowired
    @Qualifier("recordsMapper")
    private RecordsMapper recordsMapper;

    @Override
    public int addRecord(Records records) {
        return recordsMapper.addRecord(records);
    }

    @Override
    public int deleteRecordByRno(String rno) {
        return recordsMapper.deleteRecordByRno(rno);
    }

    @Override
    public List<Records> queryRecordByRsno(String rsno) {
        return recordsMapper.queryRecordByRsno(rsno);
    }

    @Override
    public Records queryRecordByRno(String rno) {
        return recordsMapper.queryRecordByRno(rno);
    }

    @Override
    public List<Records> queryRecords() {
        return recordsMapper.queryRecords();
    }

    @Override
    public List<Records> queryRecordsByMdno(String mdno) {
        return recordsMapper.queryRecordsByMdno(mdno);
    }

}
