package bean;

public class Box {
    private int id;
    private  String name;
    private  String address;
    private String agent;
    private String tableName;
    public void setId(int tmpId)
    {
        this.id = tmpId;
    }
    public void setName(String tmpName )
    {
        this.name = tmpName;
    }
    public void setAddress(String tmpAddress )
    {
        this.address = tmpAddress;
    }
    public void setAgent(String tmpAgent )
    {
        this.agent = tmpAgent;
    }
    public void setTableName(String tmpTableName )
    {
        this.tableName = tmpTableName;
    }
    public int getId()
    {
        return id;
    }
    public String getName()
    {
        return name;
    }
    public String getAddress()
    {
        return address;
    }
    public String getAgent()
    {
        return agent;
    }
    public String getTableName()
    {
        return tableName;
    }
}
