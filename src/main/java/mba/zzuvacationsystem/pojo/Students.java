package mba.zzuvacationsystem.pojo;

import java.util.Date;

public class Students {
    private String sno;
    private String sname;
    private String spassword;
    private Date sbirthday;
    private String ssex;
    private Integer sgrade;
    private String sphone;
    private String sdno;

    public Students() {
    }

    public Students(String sno, String sname, String spassword, Date sbirthday, String ssex, Integer sgrade, String sphone, String sdno) {
        this.sno = sno;
        this.sname = sname;
        this.spassword = spassword;
        this.sbirthday = sbirthday;
        this.ssex = ssex;
        this.sgrade = sgrade;
        this.sphone = sphone;
        this.sdno = sdno;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSpassword() {
        return spassword;
    }

    public void setSpassword(String spassword) {
        this.spassword = spassword;
    }

    public Date getSbirthday() {
        return sbirthday;
    }

    public void setSbirthday(Date sbirthday) {
        this.sbirthday = sbirthday;
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public Integer getSgrade() {
        return sgrade;
    }

    public void setSgrade(Integer sgrade) {
        this.sgrade = sgrade;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getSdno() {
        return sdno;
    }

    public void setSdno(String sdno) {
        this.sdno = sdno;
    }

    @Override
    public String toString() {
        return "Students{" +
                "sno='" + sno + '\'' +
                ", sname='" + sname + '\'' +
                ", spassword='" + spassword + '\'' +
                ", sbirthday=" + sbirthday +
                ", ssex='" + ssex + '\'' +
                ", sgrade=" + sgrade +
                ", sphone='" + sphone + '\'' +
                ", sdno='" + sdno + '\'' +
                '}';
    }
}
