funcionesHiperbolica
 addpath(pwd);

function mostrarTablaHiperbola(x, y, decimal)
  margen = 220;
  altura = 500;
  totalY = 0;
  totalCuadradoX = 0;
  totalX = 0;
  totalXY = 0;
  res = hiperbolica(length(x),sumaVector(x),sumaVector(y),sumaVector1X(x),sumaVector1X(y),sumaCuadrados1XVector(x),sumaVectorProducto1X1Y(x,y),decimal);
f = figure("position", get(0,"screensize")([3,4,3,4]).*[0.1 0.2 0.8 0.7], "name", "Tabla de funcion hiperbola", "numbertitle", "off");  uicontrol (f, "style", "text", "string", "i", "position",[10 altura 90 30]);
  uicontrol (f ,"style", "text", "string", "x", "position",[80 altura 90 30]);
  uicontrol (f, "style", "text", "string", "y", "position",[150 altura 90 30]);
  uicontrol (f, "style", "text", "string", "X=1/x", "position",[220 altura 90 30]);
  uicontrol (f, "style", "text", "string", "Y=1/y", "position",[290 altura 90 30]);
  uicontrol (f, "style", "text", "string", "X^2", "position",[360 altura 90 30]);
  uicontrol (f, "style", "text", "string", "X*Y", "position",[430 altura 90 30]);
  for i = 1:length(x)
    totalX += funcionRedondeo((1/x(i)), decimal); 
    totalY += (funcionRedondeo((1/y(i)), decimal));
    totalCuadradoX += (funcionRedondeo((x(i)^2), decimal));
    totalXY += (funcionRedondeo((x(i)/y(i)), decimal));
   endfor

  for i = 1:(length(x)+1)
    if(i==(length(x)+1))
      uicontrol (f, "style", "text", "string", "Total", "position",[10 (altura-i*50) 90 30]);
      uicontrol (f, "style", "text", "string", num2str(sum(x)), "position",[80 (altura-i*50) 90 30]);
      uicontrol (f, "style", "text", "string", num2str(sum(y)), "position",[150 (altura-i*50) 90 30]);
      uicontrol (f, "style", "text", "string", num2str(sum(totalX)), "position",[220 (altura-i*50) 90 30]);
      uicontrol (f, "style", "text", "string", num2str(totalY), "position",[290 (altura-i*50) 90 30]);
      uicontrol (f, "style", "text", "string", num2str(totalCuadradoX), "position",[360 (altura-i*50) 90 30]);
      uicontrol (f, "style", "text", "string", num2str(totalXY), "position",[430 (altura-i*50) 90 30]);
      break
     endif
    uicontrol (f, "style", "text", "string", num2str(i), "position",[10 (altura-i*50) 90 30]);
    uicontrol (f, "style", "text", "string", num2str(x(i)), "position",[80 (altura-i*50) 90 30]);
    uicontrol (f, "style", "text", "string", num2str(y(i)), "position",[150 (altura-i*50) 90 30]);
    uicontrol (f, "style", "text", "string", num2str(1/x(i)), "position",[220 (altura-i*50) 90 30]);
    uicontrol (f, "style", "text", "string", num2str(funcionRedondeo((1/y(i)), decimal)), "position",[290 (altura-i*50) 90 30]);
    uicontrol (f, "style", "text", "string", num2str(funcionRedondeo((x(i)^2), decimal)), "position",[360 (altura-i*50) 90 30]);
    uicontrol (f, "style", "text", "string", num2str(funcionRedondeo((x(i)/y(i)), decimal)), "position",[430 (altura-i*50) 90 30]);
  endfor

 end