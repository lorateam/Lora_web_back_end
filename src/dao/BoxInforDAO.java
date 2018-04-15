package dao;

import bean.Box;
import bean.BoxInfor;
import dbset.DBUtil;
import java.sql.*;

public class BoxInforDAO {
    //获取id号为0020001的火灾报警情况
    public BoxInfor getBoxInfor002000x(Box beanBox,BoxInfor beanBoxInfor)
    {
        String sql = " SELECT fire FROM "+beanBox.getTableName()+" where fk_id = " + beanBox.getId() + " ORDER BY pri_id DESC ";
        try(Connection c = DBUtil.getConnection(); PreparedStatement s = c.prepareStatement(sql))
        {
            ResultSet rs = s.executeQuery(sql);

            if (rs.next()) {
                beanBoxInfor.setFire(rs.getInt("fire"));
            }
            return beanBoxInfor;
        }catch (SQLException e) {

            e.printStackTrace();
            System.out.print("连接数据库失败");
            return beanBoxInfor;
        }
    }
    //获取id号为001000x的数据，x可以为任意
    public BoxInfor getBoxInfor001000x(Box beanBox,BoxInfor beanBoxInfor)
    {
        String sql = " SELECT temp,hum,lum FROM "+beanBox.getTableName()+" where fk_id = "+beanBox.getId()+" ORDER BY p_key DESC ";
        try(Connection c = DBUtil.getConnection(); PreparedStatement s = c.prepareStatement(sql))
        {
            ResultSet rs = s.executeQuery(sql);
            if (rs.next())
            {
                beanBoxInfor.setTemp(rs.getFloat("temp"));
                beanBoxInfor.setHum(rs.getFloat("hum"));
                beanBoxInfor.setLum(rs.getInt("lum"));
            }
            return beanBoxInfor;
        }catch (SQLException e) {

            e.printStackTrace();
            System.out.print("连接数据库失败");
            return beanBoxInfor;
        }
    }
    //获取id号为005000x的数据，x可以为任意，目前设置此id号所代表的box为用电器监测盒子
    public BoxInfor getBoxInfor005000x(Box beanBox, BoxInfor beanBoxInfor)
    {
        String sql = "SELECT current FROM "+beanBox.getTableName()+" where fk_id = "+ beanBox.getId() +" ORDER BY pri_id DESC";
        try (Connection c = DBUtil.getConnection(); PreparedStatement s = c.prepareStatement(sql)){
            ResultSet rs = s.executeQuery(sql);
            if (rs.next())
            {
                beanBoxInfor.setCurrent(rs.getFloat("current"));
            }
            return beanBoxInfor;
        }catch (SQLException e) {

            e.printStackTrace();
            System.out.print("连接数据库失败");
            return beanBoxInfor;
        }
    }
    /*public int getFireInfor(Box beanBox,BoxInfor beanBoxInfor) {
        //1代表有火情
        String sql = " SELECT fire FROM "+beanBox.getTableName()+" where fk_id = " + beanBox.getBoxId() + " ORDER BY pri_id DESC ";
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
    }*/
}