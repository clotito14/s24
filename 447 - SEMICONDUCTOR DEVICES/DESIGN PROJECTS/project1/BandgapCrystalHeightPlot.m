function [] = BandgapCrystalHeightPlot()
    syms x
    t = 0:0.1:6;
    f = @(x) 0.0002*x.^6 - 0.0077*x.^5 + 0.112*x.^4 - 0.8339*x.^3 + 3.3261*x.^2 - 6.7689*x + 9;
    df= matlabFunction(diff(f(x),1));

    %plot(t, f(t), 'B.--'); hold on;
  
    plot(t, df(t), 'R.--'); hold on;
    ylim([-6,6]);

    xlabel('Nanocrystal Height (nm)');
    ylabel('Bandgap Energy per Unit Height (eV/nm)');
   % ylabel('dEg/dz (eV/nm)');
 
    grid("on");
    title('First Derivative of Bandgap Energy by Nanocrystal Height');
end