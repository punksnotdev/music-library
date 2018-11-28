{ LFSaw.ar(40,0,1) * Decay2.kr(Dust2.kr(1/3,1,0)) ! 2 }.play;


{ SinOsc.ar(440,0.5,1,0.1) * LFGauss.ar(0.1, 0.12) ! 2 }.play;


{ SinOsc.ar(LFNoise0.kr(2,600, 900)) * Decay2.kr(Impulse.kr(1)+Dust.kr(2)) ! 2 }.play;


{ SinOsc.ar(SinOsc.ar( MouseX.kr(1,40),0).linlin(-1,1,100,600)) ! 2 }.play


{ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) * WhiteNoise.ar / 2   ! 2 }.play;


{ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2 ! 2 }.play;
