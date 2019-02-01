var synths = ();
var currentFolder;






var loadPath = {

	arg path;



	var files = path.pathMatch;

	files.collect({|fileName, index|

		var pathName = PathName( fileName );

		if( pathName.isFile) {

			if( pathName.extension == "scd" ) {
				// ("Load: " ++ pathName.fileNameWithoutExtension).postln;

				if( currentFolder.notNil, {

					var synthdefs = fileName.loadPaths[0];

					if( synthdefs.isKindOf(List) == true, {
						synthdefs.collect({|synthdef|
							currentFolder[synthdef.name.asSymbol]=synthdef.name;
						});
					}, {
						if( synthdefs.isKindOf(SynthDef), {

						currentFolder[pathName.fileNameWithoutExtension.asSymbol]=synthdefs.name;

						}, {
							["not a synthdef",synthdefs].postln;

						});

					});

				}, {
					// synths[pathName.fileNameWithoutExtension]=fileName.loadPaths;

				});
			}

	 	};

		if( pathName.isFolder ) {

			var folder = ();

			synths[ pathName.folderName.toLower.asSymbol ] = folder;

			currentFolder = folder;

			loadPath.value(fileName ++ "*");

		};

	});

	""

};


currentFolder = synths;
(thisProcess.nowExecutingPath ++ '/../Synthesizers/*').postln;
// loadPath.value(thisProcess.nowExecutingPath ++ '../Synthesizers/*');

loadPath.value("/home/furenku/Music/voidfunction/music-library/Synthesizers/*");

synths;
