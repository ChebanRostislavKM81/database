import cx_Oracle
username = 'cheban'
password = '988823707'
database = 'localhost/xe'

connection = cx_Oracle.connect(username, password, database)
query1 = '''select home_team, count(*) From RESULTS Group by home_team'''
query3= ''' select city, count(*) from cities where tournament!= 'friendly' group by city'''
query2= ''' select away_team, count(*) From RESULTS Group by away_team'''
query4= '''select count(*)/(select count(*) from NEUTRAL)*100 AS percent FROM NEUTRAL WHERE neutral = 'TRUE' group by neutral'''
cursor = connection.cursor()
cursor.execute(query1)

result1 = cursor.fetchall()
print(result1)

cursor.execute(query2)
result2 = cursor.fetchall()
print(result2)
cursor.execute(query3)
result3 = cursor.fetchall()
print(result3)

cursor.execute(query4)
result4 = cursor.fetchall()
print(result4)
