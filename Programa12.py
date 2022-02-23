from base64 import encode


print('\n Notas')
print('Iniciar programa(1)')
opcion=int(input('ingrese una opcion: '))

if opcion==1:
    nota1=int(input('Ingrese la primera nota: '))
    nota2=int(input('Ingrese la segunda nota: '))
    nota3=int(input('Ingrese la tercera nota: ')) 

    if(0<=nota1<101) and (0<=nota2<=101) and (0<=nota2<=101):
        promedio=((nota1+nota2+nota3)/3)

        if promedio>60:
            print('promedio:'+str(promedio))
            print('Aprobado')
           
        else: 
            print('promedio'+str(promedio))
            print('Reprobado')
           
    else:
     print('ingrese notas validas')

encode
