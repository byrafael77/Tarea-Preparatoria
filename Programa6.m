num = 100;
var = 2;
total = 0;

for i=1:num
  
  if mod(i,var)!=0
  disp(i)
  cantidad = num/2;
end
end

total = ('Completado')

fid = fopen('P6.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P6.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "3062887960313"))
N=pq_exec_params(conn, "insert into tareapreparatoria values ($1,$2);",{'Ejercicio 6',total});
%N=pq_exec_params(conn, 'select * from tareapreparatoria;') ver datos en la tabla