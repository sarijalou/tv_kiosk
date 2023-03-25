
import sqlite3
from sqlite3 import Error

def create_connection(db_file):
    """ create a database connection to the SQLite database
        specified by db_file
    :param db_file: database file
    :return: Connection object or None
    """
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Error as e:
        print(e)

    return conn
def insert_customer(conn, num):
    """
    Create a new task
    :param conn:
    :param task:
    :return:
    """

    sql = 'INSERT INTO Customers (Mobile_number) VALUES (%d);'% num
    cur = conn.cursor()
    cur.execute(sql)
    conn.commit()
    # return cur.lastrowid
    
def insert_group(conn, name,img,radif):
    """
    Create a new task
    :param conn:
    :param task:
    :return:
    """

    sql = 'INSERT INTO Groups_tbl (Group_name,Group_image,Group_row) VALUES (?,?,?);'
    cur = conn.cursor()
    cur.execute(sql,(name,img,radif))
    conn.commit()
    # return cur.lastrowid
    
def select_group(conn):
    """
    Create a new task
    :param conn:
    :param task:
    :return:
    """

    sql ="SELECT  Group_name, Group_image,Group_row FROM Groups_tbl ORDER BY Group_row ;"

    cur = conn.cursor()
    cur.execute(sql)
    rows = cur.fetchall()
   
    k=list()
    for i in rows:
        k.append(list(i))
    return k


def create_project(conn, project):
    """
    Create a new project into the projects table
    :param conn:
    :param project:
    :return: project id
    """
    sql = ''' INSERT INTO projects(name,begin_date,end_date)
              VALUES(?,?,?) '''
    cur = conn.cursor()
    cur.execute(sql, project)
    conn.commit()
    return cur.lastrowid


def create_task(conn, task):
    """
    Create a new task
    :param conn:
    :param task:
    :return:
    """

    sql = ''' INSERT INTO tasks(name,priority,status_id,project_id,begin_date,end_date)
              VALUES(?,?,?,?,?,?) '''
    cur = conn.cursor()
    cur.execute(sql, task)
    conn.commit()
    return cur.lastrowid


def ss():
    database = r"my.db3"

    # create a database connection
    conn = create_connection(database)
    with conn:
        # create a new project
        insert_customer(conn,9142010051)


if __name__ == '__main__':
   ss()