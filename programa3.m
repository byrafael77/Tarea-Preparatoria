cadena = input('Ingresa una palabra ', 's');

vocales = ['a','e','i','o','u'];
num = [];

for i = 1:5
  num = [num strfind(cadena,vocales(i))];
end
  total = length(num)
  
fid = fopen('P3.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P3.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "3062887960313"))
N=pq_exec_params(conn, "insert into tareapreparatoria values ($1,$2);",{'Ejercicio 3',total});
%N=pq_exec_params(conn, 'select * from tareapreparatoria;') ver datos en la tabla