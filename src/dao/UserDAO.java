package dao;

import bean.User;
import dbset.DBUtil;

import java.sql.*;

public class UserDAO
{
    //获取数量
    public int getTotal()
    {
        int total=0;
        try(Connection c= DBUtil.getConnection(); Statement s=c.createStatement();)
        {
            String sql="select count(*) from User";
            ResultSet rs=s.executeQuery(sql);
            while(rs.next())
            {
                total=rs.getInt(1);
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return total;
    }
    //添加用户
    public void add(User bean)
    {
        String sql="insert into user values(null,?,?)";
        try(Connection c=DBUtil.getConnection(); PreparedStatement ps=c.prepareStatement(sql);)
        {
            ps.setString(1,bean.getName());
            ps.setString(2,bean.getPassword());
            ps.execute();
            ResultSet rs=ps.getGeneratedKeys();
            if(rs.next())
            {
                int id = rs.getInt(1);
                bean.setId(id);
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    //核实用户信息
    public boolean check(User bean)
    {
        String sql="";
        return false;
    }
    //更新用户信息
    public void update(User bean)
    {
        String sql="update user set name=?,password=? where id=?";
        try(Connection c=DBUtil.getConnection();PreparedStatement ps=c.prepareStatement(sql);)
        {
            ps.setString(1,bean.getName());
            ps.setString(2,bean.getPassword());
            ps.setInt(3,bean.getId());
            ps.execute();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    //删除用户信息
    public void delete(int id)
    {
        try(Connection c=DBUtil.getConnection();Statement s=c.createStatement();)
        {
            String sql="delete from user where id="+id;
            s.execute(sql);
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }

    public User get(int id)
    {
        User bean=null;
        try(Connection c=DBUtil.getConnection();Statement s=c.createStatement();)
        {
            String sql="select * from User where id="+id;
            ResultSet rs=s.executeQuery(sql);
            if(rs.next())
            {
                bean=new User();
                String name=rs.getString("name");
                bean.setName(name);
                String password=rs.getString("password");
                bean.setPassword(password);
                bean.setId(id);
            }

        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return bean;
    }
}
