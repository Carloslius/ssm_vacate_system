package mba.zzuvacationsystem.pojo;

import java.sql.Timestamp;

public class Vacations {
    private String vno;
    private Timestamp vdate;
    private String vstatus;
    private String vmno;
    private String vsno;
    private String vdestination;
    private String vreason;

    public Vacations() {
    }

    public Vacations(String vno, Timestamp vdate, String vstatus, String vmno, String vsno, String vdestination, String vreason) {
        this.vno = vno;
        this.vdate = vdate;
        this.vstatus = vstatus;
        this.vmno = vmno;
        this.vsno = vsno;
        this.vdestination = vdestination;
        this.vreason = vreason;
    }

    public String getVno() {
        return vno;
    }

    public void setVno(String vno) {
        this.vno = vno;
    }

    public Timestamp getVdate() {
        return vdate;
    }

    public void setVdate(Timestamp vdate) {
        this.vdate = vdate;
    }

    public String getVstatus() {
        return vstatus;
    }

    public void setVstatus(String vstatus) {
        this.vstatus = vstatus;
    }

    public String getVmno() {
        return vmno;
    }

    public void setVmno(String vmno) {
        this.vmno = vmno;
    }

    public String getVsno() {
        return vsno;
    }

    public void setVsno(String vsno) {
        this.vsno = vsno;
    }

    public String getVdestination() {
        return vdestination;
    }

    public void setVdestination(String vdestination) {
        this.vdestination = vdestination;
    }

    public String getVreason() {
        return vreason;
    }

    public void setVreason(String vreason) {
        this.vreason = vreason;
    }

    @Override
    public String toString() {
        return "Vacations{" +
                "vno='" + vno + '\'' +
                ", vdate=" + vdate +
                ", vstatus='" + vstatus + '\'' +
                ", vmno='" + vmno + '\'' +
                ", vsno='" + vsno + '\'' +
                ", vdestination='" + vdestination + '\'' +
                ", vreason='" + vreason + '\'' +
                '}';
    }
}
