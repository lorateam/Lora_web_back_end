package dao;

import bean.Box;
import bean.BoxInfor;
import dbset.DBUtil;
import java.sql.*;

public class BoxInforDAO {
    public int getFireInfor(Box bean1,BoxInfor bean2) {
        //1代表有火情
        String sql = " SELECT fire FROM "+bean1.getTableName()+" where fk_id = " + bean2.getBoxId() + " ORDER BY pri_id DESC ";
        try (Connection c = DBUtil.getConnection(); PreparedStatement s = c.prepareStatement(sql)) {
            ResultSet rs = s.executeQuery(sql);
            int result = 0;
            if (rs.next()) {
                result = rs.getInt("fire");
            }
            return result;
        } catch (SQLException e) {

            e.printStackTrace();
            System.out.print("连接数据库失败");
            return 0;
        }
    }
    //获取温度
    public float getTemperature(Box bean1,BoxInfor bean2)
    {
        String sql = " SELECT temp FROM " +bean1.getTableName()+ " where fk_id = " + bean2.getBoxId() + " ORDER BY pri_id DESC ";
        try (Connection c = DBUtil.getConnection(); PreparedStatement s = c.prepareStatement(sql)) {
            ResultSet rs = s.executeQuery(sql);
            float temp = 0;
            if (rs.next()) {
                temp = rs.getFloat("temp");
            }
            return temp;
        }
        catch (SQLException e) {
            e.printStackTrace();
            System.out.print("连接数据库失败");
            return 0;
        }
    }
    //获取湿度
    public float getHumidity(Box bean1,BoxInfor bean2)
    {
        String sql = " SELECT hum FROM " +bean1.getTableName()+ " where fk_id = " + bean2.getBoxId() + " ORDER BY pri_id DESC ";
        try (Connection c = DBUtil.getConnection(); PreparedStatement s = c.prepareStatement(sql)) {
            ResultSet rs = s.executeQuery(sql);
            float hum = 0;
            if (rs.next()) {
                hum = rs.getFloat("hum");
            }
            return hum;
        }
        catch (SQLException e) {
            e.printStackTrace();
            System.out.print("连接数据库失败");
            return 0;
        }
    }
    //获取光照强度
    public int getLum(Box bean1,BoxInfor bean2)
    {
        String sql = " SELECT lum FROM " +bean1.getTableName()+ " where fk_id = " + bean2.getBoxId() + " ORDER BY pri_id DESC ";
        try (Connection c = DBUtil.getConnection(); PreparedStatement s = c.prepareStatement(sql)) {
            ResultSet rs = s.executeQuery(sql);
            int lum = 0;
            if (rs.next()) {
                lum = rs.getInt("lum");
            }
            return lum;
        }
        catch (SQLException e) {
            e.printStackTrace();
            System.out.print("连接数据库失败");
            return 0;
        }
    }
}