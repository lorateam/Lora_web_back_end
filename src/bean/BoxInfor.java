package bean;

public class BoxInfor {
    private String boxId;
    private int tmp;
    private int hum;
    private int lum;
    private int battery;
    private String time;

    public void setBoxId(String tmpBoxId)
    {
        this.boxId = tmpBoxId;
    }
    public void setTmp(int tmpTmp)
    {
        this.tmp = tmpTmp;
    }
    public void setHum(int tmpHum)
    {
        this.hum = tmpHum;
    }
    public void setLum(int tmpLum)
    {
        this.lum = tmpLum;
    }
    public void setBattery(int tmpBattery)
    {
        this.battery = tmpBattery;
    }
    public void setTime(String tmpSetTime)
    {
        this.time =  tmpSetTime;
    }
    public String getBoxId()
    {
        return boxId;
    }
    public int getTmp()
    {
        return tmp;
    }
    public int getHum()
    {
        return hum;
    }
    public int getLum()
    {
        return lum;
    }
    public int getBattery()
    {
        return battery;
    }
    public String getTime()
    {
        return time;
    }
}
