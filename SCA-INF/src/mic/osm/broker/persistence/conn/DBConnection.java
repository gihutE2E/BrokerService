package mic.osm.broker.persistence.conn;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class DBConnection implements IDBConnection{
    private JdbcTemplate jdbcTemplate;
    private DataSource dataSource;
    
    public DBConnection() {
        super();
    }
    
    public void setDataSource(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
    public JdbcTemplate getJdbcTemplate(){
        return jdbcTemplate;
    }

    public DataSource getDataSource() {
        return dataSource;
    }
}
