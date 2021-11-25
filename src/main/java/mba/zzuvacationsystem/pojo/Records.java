package mba.zzuvacationsystem.pojo;

import java.sql.Timestamp;

public class Records {
    private Integer rno;
    private Timestamp rdate;
    private String rpos;
    private String risill;
    private String risclosecontact;
    private String rsno;

    public Records() {
    }

    public Records(Integer rno, Timestamp rdate, String rpos, String risill, String risclosecontact, String rsno) {
        this.rno = rno;
        this.rdate = rdate;
        this.rpos = rpos;
        this.risill = risill;
        this.risclosecontact = risclosecontact;
        this.rsno = rsno;
    }

    public Integer getRno() {
        return rno;
    }

    public void setRno(Integer rno) {
        this.rno = rno;
    }

    public Timestamp getRdate() {
        return rdate;
    }

    public void setRdate(Timestamp rdate) {
        this.rdate = rdate;
    }

    public String getRpos() {
        return rpos;
    }

    public void setRpos(String rpos) {
        this.rpos = rpos;
    }

    public String getRisill() {
        return risill;
    }

    public void setRisill(String risill) {
        this.risill = risill;
    }

    public String getRisclosecontact() {
        return risclosecontact;
    }

    public void setRisclosecontact(String risclosecontact) {
        this.risclosecontact = risclosecontact;
    }

    public String getRsno() {
        return rsno;
    }

    public void setRsno(String rsno) {
        this.rsno = rsno;
    }

    @Override
    public String toString() {
        return "Records{" +
                "rno=" + rno +
                ", rdate=" + rdate +
                ", rpos='" + rpos + '\'' +
                ", risill='" + risill + '\'' +
                ", risclosecontact='" + risclosecontact + '\'' +
                ", rsno='" + rsno + '\'' +
                '}';
    }
}
