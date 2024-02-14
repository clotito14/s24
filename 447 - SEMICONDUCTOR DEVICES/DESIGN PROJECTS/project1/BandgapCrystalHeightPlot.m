function [] = test()
    t = [0:0.1:10];
    a = 0.0002*t^6 - 0.0087*t^5 + 0.1258*t^4 - 0.9235*t^3 + 3.6223*t^2 - 7.2286*t + 9.2538;
    plot(t, a, 'B*--');
    xlabel('Nanocrystal Height (nm)');
    ylabel('Bandgap Energy (eV)');
    title('Bandgap Energy v. Nanocrystal Height');
end