n = input('Ingrese año de nacimiento');
x = mod(n,4)==0;
y = mod(n,100)==0;
z = mod(n,400)==0;
total = 0;
if (x && y && z) || (x && ~y && ~z)
   disp('Año bisiesto')
   total = ('Año bisiesto');
 else
   disp('Año no bisiesto')
   total = ('Año no bisiesto');
end

fid = fopen('P13.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P13.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "3062887960313"))
N=pq_exec_params(conn, "insert into tareapreparatoria values ($1,$2);",{'Ejercicio 13',total});
%N=pq_exec_params(conn, 'select * from tareapreparatoria;') ver datos en la tabla