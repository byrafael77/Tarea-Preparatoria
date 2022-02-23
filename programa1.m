nu1 = input('Primer número ');
nu2 = input('Segundo número ');
nu3 = input('Tercer número ');
if((nu1>nu2)&&(nu1>nu3)&&(nu2!=nu3))
  total = nu1 + nu2 + nu3
elseif ((nu2>nu1)&&(nu2>nu3)&&(nu1!=nu3))
  total = nu1 * nu2 * nu3
elseif ((nu3>nu1)&&(nu3>nu2)&&(nu1!=nu2))
  total = cat(2,nu1,nu2,nu3)
elseif ((nu1==nu2)&&(nu1!=nu3))
  total = nu3;
  printf('Número distante: %d\n', total)
elseif ((nu1==nu3)&&(nu1!=nu2))
  total = nu2;
  printf('Número distante; %d\n', total)
elseif ((nu3==nu2)&&(nu1!=nu3))
  total = nu1;
  printf('Número distante: %d\n', total)
elseif ((nu1==nu2)&&(nu1=nu3)&&(nu2==nu3))
  total = ('Iguales');
end 

fid = fopen('P1.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P1.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "3062887960313"))
N=pq_exec_params(conn, "insert into tareapreparatoria values ($1,$2);",{'Ejercicio 1',total});
%N=pq_exec_params(conn, 'select * from tareapreparatoria;') ver datos en la tabla