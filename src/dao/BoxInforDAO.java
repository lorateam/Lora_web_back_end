package dao;

import bean.BoxInfor;
import dbset.DBUtil;
import java.sql.*;
//此时的代码是写死了的
public class BoxInforDAO {
    public int getFireInfor(BoxInfor bean)
    {
        //1代表有火情
        String sql = " SELECT fire FROM b_002 where fk_id = "+bean.getBoxId()+" ORDER BY pri_id DESC ";
        //String sql = " SELECT fire FROM b_002 where fk_id = 0020001 ORDER BY pri_id DESC ";
        try (Connection c = DBUtil.getConnection();PreparedStatement s = c.prepareStatement(sql)) {
            ResultSet rs = s.executeQuery(sql);
            int result = 0;
            System.out.print(sql);
            if (rs.next())
            {
                result = rs.getInt("fire");
            }
            return result;
        } catch (SQLException e) {

            e.printStackTrace();
            System.out.print("连接数据库失败");
            return 0;
        }
    }
}