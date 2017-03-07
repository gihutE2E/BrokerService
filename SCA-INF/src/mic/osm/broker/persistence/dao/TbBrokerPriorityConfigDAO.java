package mic.osm.broker.persistence.dao;

import java.util.ArrayList;

import java.util.List;

import mic.osm.broker.persistence.conn.DBConnection;
import mic.osm.broker.persistence.entity.TbBrokerPriorityConfig;

import mic.osm.broker.persistence.rowMapper.TbBrokerPriorityMapper;

import mic.osm.broker.wsdl.AdditionalType;
import mic.osm.broker.wsdl.ProductOfferingType;

import org.springframework.jdbc.core.BeanPropertyRowMapper;

import org.springframework.jdbc.core.JdbcTemplate;

public class TbBrokerPriorityConfigDAO extends GenericDAO {
    private static final String FIND_BY_ID =
        "SELECT ID, PRODUCT, ACTION, PRIORITY FROM TB_BROKER_PRIORITY_CONFIG WHERE ID = ?";

    private static final String FIND_BY =
        "SELECT ID, PRODUCT, ACTION, PRIORITY FROM TB_BROKER_PRIORITY_CONFIG";


    private DBConnection dbComponent;


    public TbBrokerPriorityConfigDAO() {
        super();
    }

    public TbBrokerPriorityConfig findById(Long id) {
        JdbcTemplate jdbcTamplate = dbComponent.getJdbcTemplate();
        TbBrokerPriorityConfig entity =
            (TbBrokerPriorityConfig)jdbcTamplate.queryForObject(FIND_BY_ID,
                                                                new Object[] { id },
                                                                new TbBrokerPriorityMapper());

        return entity;
    }

    public ArrayList<TbBrokerPriorityConfig> findByProductOrderByPriority(ArrayList<ProductOfferingType> orders) {
        StringBuffer sql = new StringBuffer();
        sql.append(FIND_BY).append(" WHERE ");

        for (ProductOfferingType product : orders) {
            sql.append(" (").append("PRODUCT = ").append(product.getProduct().getCode());
            sql.append(" AND ").append("ACTION = ");
            sql.append(product.getOfferingDetail().getOfferAction()).append(" )");

            if (orders.indexOf(product) < orders.size() - 1) {
                sql.append(" OR ");
            }
        }

        sql.append(" ORDER BY PRIORITY DESC ");

        JdbcTemplate jdbcTamplate = dbComponent.getJdbcTemplate();
        ArrayList<TbBrokerPriorityConfig> entities =
            (ArrayList<TbBrokerPriorityConfig>)jdbcTamplate.query(sql.toString(),
                                                                  new BeanPropertyRowMapper(TbBrokerPriorityConfig.class));

        return entities;
    }

    public void setDbComponent(DBConnection dbComponent) {
        this.dbComponent = dbComponent;
    }

    public DBConnection getDbComponent() {
        return dbComponent;
    }
}
