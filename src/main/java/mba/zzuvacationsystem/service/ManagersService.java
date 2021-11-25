package mba.zzuvacationsystem.service;

import mba.zzuvacationsystem.pojo.Managers;

public interface ManagersService {
    int register(Managers manager);
    boolean isExistMno(String mno);
    Managers login(String mno, String mname);
}
