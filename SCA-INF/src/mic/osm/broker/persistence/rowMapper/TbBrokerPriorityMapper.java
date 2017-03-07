package mic.osm.broker.persistence.rowMapper;

import java.sql.ResultSet;

import java.sql.SQLException;

import mic.osm.broker.persistence.entity.TbBrokerPriorityConfig;

import org.springframework.jdbc.core.RowMapper;

public class TbBrokerPriorityMapper implements RowMapper{
    public TbBrokerPriorityMapper() {
        super();
    }

    public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
        TbBrokerPriorityConfig entity = new TbBrokerPriorityConfig();
        entity.setId(rs.getLong("ID"));
        entity.setAction(rs.getString("ACTION"));
        entity.setPriority(rs.getLong("PRIORITY"));
        entity.setProduct(rs.getString("PRODUCT"));
        
        return entity;
    }
}
