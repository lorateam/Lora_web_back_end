#coding=utf-8
'''
使用前pip install pymysql、　pip install paho-mqtt
MQTT API: https://pypi.python.org/pypi/paho-mqtt
'''
import paho.mqtt.client as mqtt
import pymysql

def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))
    client.subscribe("DCS/ESP8266/TEMP")

def on_message(client, userdata, msg):
    '''收到消息就执行下面的操作'''
    # print(msg.topic+" "+str(msg.payload))
    sql ="INSERT INTO mqtt_test(temp) values(" + msg.payload + ");"
    print(sql)
    insert_db(sql)


def insert_db(sql):
    connection = pymysql.connect(host='127.0.0.1', port=3306, user='root', password='123', db='test',
                                charset='utf8', cursorclass=pymysql.cursors.DictCursor)
    # 通过cursor创建游标
    cursor = connection.cursor()
    # 创建sql 语句，并执行
    cursor.execute(sql)
    # 提交SQL
    connection.commit()


client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message
# #创建连接并循环执行on_message操作
client.connect("tx.3cat.top", 1883,60)
client.loop_forever()
