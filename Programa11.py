from base64 import encode


print('\n Area de figuras geometricas')
print('Iniciar programa(1)')
print('Salir(2)')
opcion=int(input('ingrese una opcion: '))

if opcion==1:
    print('1 = circulo')
    print('2 = triangulo')
    print('3 = cuadrado')
    print('4 = rectangulo')
    figura=int(input('Seleccione una opcion: '))

    if figura==1: 
        print('Circulo')
        radio=float(input('Ingrese el radio: '))
        if radio>0:
            acirculo=3.12159*(radio*radio)
            print('El area del circulo es: ')
            
        else:
            print("Ingrese un radio mayor a 0") 

    if figura==2:
        print('Triangulo')
        base=float(input('Ingrese la base: '))
        altura=float(input('Ingrese la altura: '))
        if base>0 and altura>0:
            atriangulo=0.5*(base*altura)
            print('El area del triangulo es: ')
            
        else: 
            print("ingrese valores mayores a 0")

    if figura==3:
        print('Cuadrado')
        lado=float(input('Ingrese el lado: '))
        if lado>0:
            acuadrado=(lado*lado)
            print('El area del cuadrado es: ')
           
        else :
            print("Ingrese un lado mayor a 0")
    
    if figura==4:
        print('Rectangulo')
        base=float(input('Ingrese la base: '))
        altura=float(input('Ingrese la altura: '))
        if base>0 and altura>0:
            arectangulo=(base*altura)
            print('El area del rectangulo es: ')
            
        else:
            print("ingrese valores mayores a 0 ")
    print("Terminado")
encode
