package bean;

public class BoxInfor {
    private String boxId;
    private float temp;
    private float hum;
    private int lum;
    private int battery;
    private String time;
    private int fire;
    private float current;
    public void setBoxId(Box box)
    {
        this.boxId = box.getId();
    }
    public void setFire(int tmpFire)
    {
        this.fire = tmpFire;
    }
    public void setTemp(float tmpTemp)
    {
        this.temp = tmpTemp;
    }
    public void setHum(float tmpHum)
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
    public void setCurrent(float tmpCurrent){this.current = tmpCurrent;}
    public int getFire(){return fire;}
    public String getBoxId()
    {
        return boxId;
    }
    public float getTemp()
    {
        return temp;
    }
    public float getHum()
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
    public float getCurrent(){return current;}
}
