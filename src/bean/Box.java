package bean;

public class Box {
    private String id;
    private  String name;
    private  String address;
    private String agent;
    private String tableName;
    public Box(String tmpId, String tmpName, String tmpAddress, String tmpTableName)
    {
        this.id = tmpId;
        this.name = tmpName;
        this.address = tmpAddress;
        this.tableName = tmpTableName;
    }
    public void setId(String tmpId)
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
    public String getId()
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
