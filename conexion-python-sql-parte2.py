import mysql.connector
import random
from datetime import date

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="root",
  password="root",
  database="segunda_parte"
)


for i in range(40):
    today = date.today()
    nombres = ["Maria", "Juan"]
    rand_name = random.choice(nombres)
    if rand_name.startswith("M"):
        gender = 'F'
    else:
        gender = 'M'
    suledo = random.uniform(10000,100000)
    if gender == 'F':
        cargos = ["Jueza", "Secretaria","vendedor"]
        sCargo = random.choice(cargos)
    elif gender == 'M':
        cargos = ["Juez", "Secretario","vendedor"]
        sCargo = random.choice(cargos)
    dptRandom = ['3000','2000']
    dptRandom = random.choice(dptRandom)
    jefeId = ["31.840.269","31.840.2693", "31.8401.369"]
    JefeId = random.choice(jefeId)
    comision = 0
    comision = random.uniform(0,1000)
    mycursor = mydb.cursor()
    sql = "INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES (%s, %s,%s, %s,%s, %s,%s, %s,%s, %s)"
    val = (str(i), f'{rand_name}', f'{gender}', today, '2016-03-13 02:32:21', suledo, comision, sCargo, JefeId, dptRandom)

    mycursor.execute(sql, val)

    mydb.commit()

    print(mycursor.rowcount, "record inserted.")
