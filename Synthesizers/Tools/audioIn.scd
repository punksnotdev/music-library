(

	SynthDef(\audioIn, {

		arg inBus=0,
		out=0,
		amp=1;

		var sig;

		sig = SoundIn.ar(inBus)*amp;


		Out.ar(out,sig);


	}).store;

)
