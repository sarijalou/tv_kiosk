
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
def insert_product(conn,name,img,pricee,group_id,Available):
    sql = 'INSERT INTO Products (Product_name,Product_image,Product_price,Group_id,Available) VALUES (?,?,?,?,?);'
    cur = conn.cursor()
    cur.execute(sql,(name,img,pricee,group_id,Available))
    conn.commit()
   
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
def select_group_id(conn,name):
    """
    Create a new task
    :param conn:
    :param task:
    :return:
    """

    sql ="SELECT  Group_id FROM Groups_tbl  WHERE Group_name ='%s' ;" % (name)

    cur = conn.cursor()
    cur.execute(sql)
    rows = cur.fetchone()[0]

    return rows
   

    

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

def delete_Groups(conn,name,img):
    """
    delete a new Groups
    :param conn:
    :param task:
    :return:
    """

    sql ="DELETE FROM Groups_tbl WHERE Group_name=? AND Group_image=? ;"

    cur = conn.cursor()
    cur.execute(sql,(name,img))
    conn.commit()

def select_product(conn,name):
    '''
    vooroodi nam goorooh
    khoorooji mahsoolat an goorooh
    '''
    
    sql ="SELECT Product_name, Product_price,Product_image,Available FROM Products inner join Groups_tbl ON Groups_tbl.Group_id = Products.Group_id WHERE Group_name ='%s' ;" % (name)

    #sql ="SELECT  Product_name, Product_price,Product_image,Available FROM Products ;"

    cur = conn.cursor()
    cur.execute(sql)
    rows = cur.fetchall()
   
    k=list()
    for i in rows:
        k.append(list(i))
    return k

  
# SELECT  Product_name  , Product_price , Product_image  ,Available FROM Products where Group_id IN  (SELECT Group_id from Groups_tbl WHERE Group_name="pizza");
# SELECT  Product_name  , Product_price , Product_image  ,Available FROM Products inner join Groups_tbl ON Groups_tbl.Group_id = Products.Group_id WHERE Group_name ="pizza" ;
if __name__ == '__main__':
    database = r"my.db3"
    conn = create_connection(database)
    print(select_product(conn,'pizza'))
    conn.close()
