#coding=utf-8
import pymysql
import time

class Mysql:
    m_conn = pymysql.connect(
        host='127.0.0.1', port=3306,
        user='root', password='123',
        db='lora_new', charset='utf8',
        cursorclass=pymysql.cursors.DictCursor)
    m_cursor = m_conn.cursor()

    def getConn(self):
        return self.m_conn

    def update(self, sql):
        try:
            self.m_cursor.execute(sql)
            self.m_conn.commit()
        except:
            print("%s更新数据库失败：" % self.Time() + sql)

    def querry(self, sql):
        try:
            self.m_cursor.execute(sql)
            result = self.m_cursor.fetchall()
            return result
        except:
            print("%s更新数据库失败：" % self.Time() + sql)

    def Time(self):
        str = time.strftime("[%m-%d %H:%M]", time.localtime())
        return str

    def close(self):
        self.m_conn.close()