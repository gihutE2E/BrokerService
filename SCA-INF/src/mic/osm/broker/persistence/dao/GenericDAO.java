package mic.osm.broker.persistence.dao;

import java.util.ArrayList;

public class GenericDAO {
    public GenericDAO() {
        super();
    }

    protected String dynamicWhereAnd(ArrayList<String> rows) {
        StringBuffer where = new StringBuffer();
        where.append(" WHERE ");

        int i = 0;
        do {
            where.append(rows.get(i)).append(" = ? ");
            i++;

            if (i < rows.size()) {
                where.append(" AND ");
            }
        } while (i < rows.size());

        return where.toString();
    }

    protected String dynamicIn(ArrayList<String> data) {
        StringBuffer in = new StringBuffer();
        in.append(" ( ");
        int i = 0;
        do {
            in.append("'").append(data.get(i)).append("'");
            i++;
            if (i < data.size()) {
                in.append(", ");
            } else {
                in.append(" ) ");
            }
        } while (i < data.size());

        return in.toString();
    } 
    

}
