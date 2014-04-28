global h;
global w;

function res = calcularFuego( w, h )
	res = 0;
	height = h;
	width = w;
	A = zeros(height, width);

	tic;
	for it = 1:100
		for n=1:width-1
			A(height-1, n) = rand();
		endfor
		for i=2:height-2
			for j=2:width-2
				A(i, j) = (A(i-1,j) + A(i+1,j) + A(i,j-1) + A(i,j+1) ) / 4;
			endfor
		endfor
	endfor
	res = toc;
endfunction

tiempos(1) = calcularFuego(40, 30);
tiempos(2) = calcularFuego(80, 60);
tiempos(3) = calcularFuego(120, 80);
tiempos(4) = calcularFuego(160, 120);
tiempos(5) = calcularFuego(320, 200);
tiempos(6) = calcularFuego(640, 480);

barh(tiempos);
title('Tiempos de ejecucion para tamaños de problema');
tiempos
