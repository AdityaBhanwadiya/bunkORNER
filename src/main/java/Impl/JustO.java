
package Impl;


import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
public class JustO implements Serializable{
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int ordId;
private String userName;
private String userPhone;
private int f1=0,f2=0,f3=0,f4=0,f5=0,f6=0,f7=0,f8=0,f9=0,f10=0,f11=0,f12=0,f13=0,f14=0,f15=0,f16=0;
private int status=0;
@Temporal(value= TemporalType.TIMESTAMP)
private Date odate;

    public JustO() {
    }

    public void setOdate(Date odate) {
        this.odate = odate;
    }

    public int getOrdId() {
        return ordId;
    }

    
    public Date getOdate() {
        return odate;
    }

    public JustO(String userName, String userPhone, int f1, int f2, int f3, int f4, int f5, int f6, int f7, int f8, int f9, int f10, int f11, int f12, int f13, int f14, int f15, int f16) {
        this.userName = userName;
        this.userPhone = userPhone;
        this.f1 = f1;
        this.f2 = f2;
        this.f3 = f3;
        this.f4 = f4;
        this.f5 = f5;
        this.f6 = f6;
        this.f7 = f7;
        this.f8 = f8;
        this.f9 = f9;
        this.f10 = f10;
        this.f11 = f11;
        this.f12 = f12;
        this.f13 = f13;
        this.f14 = f14;
        this.f15 = f15;
        this.f16 = f16;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public int getF1() {
        return f1;
    }

    public int getF2() {
        return f2;
    }

    public int getF3() {
        return f3;
    }

    public int getF4() {
        return f4;
    }

    public int getF5() {
        return f5;
    }

    public int getF6() {
        return f6;
    }

    public int getF7() {
        return f7;
    }

    public int getF8() {
        return f8;
    }

    public int getF9() {
        return f9;
    }

    public int getF10() {
        return f10;
    }

    public int getF11() {
        return f11;
    }

    public int getF12() {
        return f12;
    }

    public int getF13() {
        return f13;
    }

    public int getF14() {
        return f14;
    }

    public int getF15() {
        return f15;
    }

    public int getF16() {
        return f16;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public void setF1(int f1) {
        this.f1 = f1;
    }

    public void setF2(int f2) {
        this.f2 = f2;
    }

    public void setF3(int f3) {
        this.f3 = f3;
    }

    public void setF4(int f4) {
        this.f4 = f4;
    }

    public void setF5(int f5) {
        this.f5 = f5;
    }

    public void setF6(int f6) {
        this.f6 = f6;
    }

    public void setF7(int f7) {
        this.f7 = f7;
    }

    public void setF8(int f8) {
        this.f8 = f8;
    }

    public void setF9(int f9) {
        this.f9 = f9;
    }

    public void setF10(int f10) {
        this.f10 = f10;
    }

    public void setF11(int f11) {
        this.f11 = f11;
    }

    public void setF12(int f12) {
        this.f12 = f12;
    }

    public void setF13(int f13) {
        this.f13 = f13;
    }

    public void setF14(int f14) {
        this.f14 = f14;
    }

    public void setF15(int f15) {
        this.f15 = f15;
    }

    public void setF16(int f16) {
        this.f16 = f16;
    }

    @Override
    public String toString() {
        return "JustO{" + "ordId=" + ordId + ", userName=" + userName + ", userPhone=" + userPhone + ", f1=" + f1 + ", f2=" + f2 + ", f3=" + f3 + ", f4=" + f4 + ", f5=" + f5 + ", f6=" + f6 + ", f7=" + f7 + ", f8=" + f8 + ", f9=" + f9 + ", f10=" + f10 + ", f11=" + f11 + ", f12=" + f12 + ", f13=" + f13 + ", f14=" + f14 + ", f15=" + f15 + ", f16=" + f16 + ", status=" + status + ", odate=" + odate + '}';
    }





}