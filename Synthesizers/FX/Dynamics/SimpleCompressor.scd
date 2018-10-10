SynthDef(\fx_dyn_simpleCompressor, {

	arg inBus=0, wet=0.75;

	var sig = In.ar(inBus);

	Out.ar(
        [0,1],
        (sig * (1-wet))+
        (FreeVerb.ar(
            In.ar(inBus) * wet,
            rv1,
            rv2
        )*wet)
    )
}).store;
