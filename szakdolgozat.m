%% Sallen-Key 2nd order Low Pass Filter transfer function

    %Parameters
    R10 = 1.E4;
    R21 = 1.E4;
    C10 = 1.E-11;
    C9 = 1.E-11;
    
    %Transfer function
    W = tf((1/(R10*C10*R21*C9)),[1, 1/(R21*C9)+1/(R10*C9), ...
        1/(R10*C10*R21*C9) ]);

    %Bode diagram solely with amplitude 
    h = bodeplot(W);
    setoptions(h,'FreqUnits','Hz','PhaseVisible','off');

