Python 3.11.5 (tags/v3.11.5:cce6ba9, Aug 24 2023, 14:38:34) [MSC v.1936 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.

# Importing MySQL Connector/Python
import mysql.connector as connector
from mysql.connector import Error
try:
    connection=connector.connect(user="root", password="")
except Error as er:
    print(er.msg)

    
Access denied for user 'root'@'localhost' (using password: NO)
try:
    connection=connector.connect(user="root", password="Iyke501010")
except Error as er:
    print(er.msg)

    
print("Connection between MySQL and Python is established.\n)
      
SyntaxError: incomplete input
print("Connection between MySQL and Python is established.\n")
      
Connection between MySQL and Python is established.

# Creating Cursor object to communicate with entire MySQL database
      
cursor = connection.cursor()
      
print("Cursor is created to communicate with the MySQL using Python.")
      
Cursor is created to communicate with the MySQL using Python.

# Set LittleLemonDB database for use
      
cursor.execute("USE LittleLemonDB")
      
connection.database
      
'littlelemondb'
print("The database LittleLemonDB is set for use.")
      
The database LittleLemonDB is set for use.
show_tables_query = "SHOW TABLES;"
      
cursor.execute(show_tables_query)
      
results=cursor.fetchall()
      
columns=cursor.column_names
      
print(columns)
      
('Tables_in_littlelemondb',)
for result in results:
    print(result)

      
('bookings',)
('customer',)
('delivery',)
('menu',)
('orders',)
('ordersview',)
('orderview',)
('staff',)
>>> 
>>> join_query = """ SELECT Customer.FullName, Customer.ContactNumber, Customer.Email, Orders.TotalCost FROM Customer LEFT JOIN Orders ON Customer.CustomerID = Orders.CustomerID WHERE Orders.TotalCost > 60;"""
...       
>>> 
>>> cursor.execute(join_query)
...       
>>> results = cursor.fetchall()
...       
>>> print(columns)
...       
('Tables_in_littlelemondb',)
>>> for result in results:
...       print(result)
... 
...       
('Marcos Romero', 757656211, 'ma@littlelemon.com', Decimal('300'))
('Vanessa Brume', 757656546, 'va@littlelemon.com', Decimal('250'))
('Anna Iversen', 757656123, 'an@littlelemon.com', Decimal('150'))
('Marcos Romero', 757656211, 'ma@littlelemon.com', Decimal('200'))
>>> 
>>> if connection.is_connected():
...       cursor.close()
...       print("The cursor is closed.")
...       connection.close()
...       print("MySQL connection is closed.")
... else:
...     print("Connection is already closed.")
... 
...     
True
The cursor is closed.
MySQL connection is closed.
