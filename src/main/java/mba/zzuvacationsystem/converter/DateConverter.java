package mba.zzuvacationsystem.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter implements Converter<String, Date> {
    @Override
    public Date convert(String s) {
        SimpleDateFormat simpleDateFormat = null;
        if (s.contains(" ")) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }else {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        }
        try {
            java.util.Date utilDate = simpleDateFormat.parse(s);
            java.sql.Timestamp stp = new java.sql.Timestamp(utilDate.getTime());
            return stp;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
