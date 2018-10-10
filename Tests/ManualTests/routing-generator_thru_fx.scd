SynthDef(\test, {

	arg
	trigFreq=3,
	decayTime=0.2;

	var sig, trigger, decay;

	sig = WhiteNoise.ar;

	trigger = Impulse.kr(trigFreq);

	decay = Decay2.kr(
		trigger, 0.01, decayTime
	);

	sig = sig * decay;

	Out.ar(0,Pan2.ar(sig));

}).add;



x = Synth(\test);

x.set(\trigFreq,1);
x.set(\decayTime,0.1);


// create FX unit after first generator synth:

r = Synth.after(x,\fx_spc_freeverb);

x.set(\trigFreq,1)

r.set(\room,1)
r.set(\damp,0)
r.set(\wet,0);
