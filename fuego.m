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

etiq = [40, 80, 120, 160, 320, 640];
printf("Calculando para 40x30...\n");
tiempos(1) = calcularFuego(40, 30);

 printf("Calculando para 80x60...\n");
tiempos(2) = calcularFuego(80, 60);

 printf("Calculando para 120x80...\n");
tiempos(3) = calcularFuego(120, 80);

 printf("Calculando para 160x120...\n");
tiempos(4) = calcularFuego(160, 120);

 printf("Calculando para 320x200...\n");
tiempos(5) = calcularFuego(320, 200);

 printf("Calculando para 640x480...\n");
tiempos(6) = calcularFuego(640, 480);

barh(tiempos);
title('Tiempos de ejecucion para tamaños de problema');
saveas (1, "tiempos.png");
tiempos
