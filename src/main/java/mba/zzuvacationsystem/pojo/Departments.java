package mba.zzuvacationsystem.pojo;

public class Departments {
    private String dno;
    private String dname;

    public Departments() {
    }

    public Departments(String dno, String dname) {
        this.dno = dno;
        this.dname = dname;
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    @Override
    public String toString() {
        return "Departments{" +
                "dno='" + dno + '\'' +
                ", dname='" + dname + '\'' +
                '}';
    }
}
