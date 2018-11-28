var loadPath = {

	arg path;

	var files = path.pathMatch;

	files.collect({|fileName, index|

		var pathName = PathName( fileName );

		if( pathName.isFile) {

			if( pathName.extension == "scd" ) {
				("Load: " ++ pathName.fileNameWithoutExtension).postln;
				fileName.loadPaths;
			}

	 	};

		if( pathName.isFolder ) {

			loadPath.value(fileName ++ "*");

		};

	});

	""

};


loadPath.value("/home/furenku/Musica/SuperCollider/voidfunction/music-library/Synthesizers/*");
