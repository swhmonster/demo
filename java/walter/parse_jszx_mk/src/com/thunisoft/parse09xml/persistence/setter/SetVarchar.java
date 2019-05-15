package com.thunisoft.parse09xml.persistence.setter;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

public class SetVarchar implements PropSetter {

    public void setObject(PreparedStatement ps, int index, Object data) throws SQLException {
        ps.setNull(index, Types.VARCHAR);
    }

}
