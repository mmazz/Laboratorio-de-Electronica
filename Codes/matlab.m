%% osciloscopio Tektronics TDS 1002B

disp('Osciloscopio Tektronics TDS 1002B')

%muestro la lista de equipos disponibles, y el string de inicializacion
%%out = busco_equipos

vu = visa('ni','USB0::0x0699::0x0368::C017041::INSTR');

%incrementa el tama�o del buffer
set(vu,'InputBufferSize',20000)

%abre la sesi?n Visa de comunicaci?n con el osciloscopio
fopen(vu);

canal=1;% defino que canal voy a pedir
canal_2 =2;

%adquiero los datos de una pantalla
[voltaje tiempo]=OSC_adquiere_canal(vu,canal);

[voltaje_2 tiempo_2]=OSC_adquiere_canal(vu,canal_2);

%cierro la comunicacion con el osciloscopio
fclose(vu); 