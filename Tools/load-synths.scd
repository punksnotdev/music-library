var loadPath = {

	arg path;

	f = path.pathMatch;

	// f.postln;
	// f = "/home/furenku/Musica/SuperCollider/voidfunction/music-library/Synthesizers/Instruments/Percussion/Drums/Kicks/*.scd".pathMatch;

	f.collect({|fileName, index|

		var pathName = PathName( fileName );


		if( pathName.isFile) {


			if( pathName.extension == "scd" ) {
				["interpret", fileName].postln;
				fileName.loadPaths;
			}

	 	};

		if( pathName.isFolder ) {
			// [ "load",  ].postln;
			loadPath.value(fileName ++ "*");

		};

	});

	""

};


loadPath.value("/home/furenku/Musica/SuperCollider/voidfunction/music-library/Synthesizers/*");
