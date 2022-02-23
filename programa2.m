nu = input('Ingresa el número ');
for i=0:nu
  if(mod(nu,i)==0)
  disp(i)
  total = i;
end
end

fid = fopen('P2.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P2.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "3062887960313"))
N=pq_exec_params(conn, "insert into tareapreparatoria values ($1,$2);",{'Ejercicio 2',total});
%N=pq_exec_params(conn, 'select * from tareapreparatoria;') ver datos en la tabla