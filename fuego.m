% Efecto fuego demo

% tamaño del problema
width = 40;
height = 30;

%creamos la matriz de ceros
A = zeros(height, width);



%bucle
tic;
for it = 1:50
	%base de llamas
	for n=1:width-1
		A(height-1, n) = rand();
	endfor
	%algoritmo
	for i=2:height-2
		for j=2:width-2
			A(i, j) = (A(i-1,j) + A(i+1,j) + A(i,j-1) + A(i,j+1) ) / 4;
		endfor
	endfor
endfor
toc;
 imshow(A);
