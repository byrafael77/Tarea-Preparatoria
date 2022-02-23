
from base64 import encode
from numpy import disp


numero1 = int(input('modelo: '))
numero2 = int(input('Kilometraje: '))

if ((numero1<2007)and(numero2>20)):

    disp('Renovar')
    total = ('Renovar');

elif ((numero1>=2007)and(numero2<=2013)and (numero2>=20000)):
    disp ('Mantenimiento')
    total = ('Mantenimiento');

elif((numero1>2013)and(numero2<10000)):
    disp('Optimas condiciones')
    total = ('Optimas condiciones');
else: 
    disp('Mecanico')
    total = ('Mecanico');
encode