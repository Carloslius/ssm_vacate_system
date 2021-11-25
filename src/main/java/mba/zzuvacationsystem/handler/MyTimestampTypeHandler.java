package mba.zzuvacationsystem.handler;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.*;

public class MyTimestampTypeHandler extends BaseTypeHandler<Timestamp> {

    @Override
    public void setNonNullParameter(PreparedStatement preparedStatement, int i, Timestamp timestamp, JdbcType jdbcType) throws SQLException {
        preparedStatement.setTimestamp(i, timestamp);
    }

    @Override
    public Timestamp getNullableResult(ResultSet resultSet, String s) throws SQLException {
        return resultSet.getTimestamp(s);
    }

    @Override
    public Timestamp getNullableResult(ResultSet resultSet, int i) throws SQLException {
        return resultSet.getTimestamp(i);
    }

    @Override
    public Timestamp getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        return callableStatement.getTimestamp(i);
    }
}
