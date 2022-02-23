nu1 = input('Lado A ');
nu2 = input('Lado B ');
nu3 = input('Lado C ');
total = 0;

if((nu1!=nu2)&&(nu2!=nu3)&&(nu1!=nu3))
  disp('Triangulo Escaleno')
  total = ('Triangulo Escaleno');
elseif(((nu1==nu3)&&(nu1!=nu2))||((nu3==nu2)&&(nu1!=nu3))||((nu1==nu2)(nu1!=nu3)))
  disp('Triangulo Isoseles')
  total = ('Triangulo Isoseles');
elseif((nu1==nu2)&&(nu2==nu3)&&(nu1==nu3))
  disp('Triangulo Equilatero')
  total = ('Triangulo Equilatero');
end

fid = fopen('P5.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P5.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "3062887960313"))
N=pq_exec_params(conn, "insert into tareapreparatoria values ($1,$2);",{'Ejercicio 5',total});
%N=pq_exec_params(conn, 'select * from tareapreparatoria;') ver datos en la tabla