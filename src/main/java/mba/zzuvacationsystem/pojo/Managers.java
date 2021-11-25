package mba.zzuvacationsystem.pojo;

public class Managers {
    private String mno;
    private String mname;
    private String mpassword;
    private String mdno;

    public Managers() {
    }

    public Managers(String mno, String mname, String mpassword, String mdno) {
        this.mno = mno;
        this.mname = mname;
        this.mpassword = mpassword;
        this.mdno = mdno;
    }

    public String getMno() {
        return mno;
    }

    public void setMno(String mno) {
        this.mno = mno;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMpassword() {
        return mpassword;
    }

    public void setMpassword(String mpassword) {
        this.mpassword = mpassword;
    }

    public String getMdno() {
        return mdno;
    }

    public void setMdno(String mdno) {
        this.mdno = mdno;
    }

    @Override
    public String toString() {
        return "Managers{" +
                "mno='" + mno + '\'' +
                ", mname='" + mname + '\'' +
                ", mpassword='" + mpassword + '\'' +
                ", mdno='" + mdno + '\'' +
                '}';
    }
}
