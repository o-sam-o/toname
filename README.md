# ToName

Overview
--------
ToName is a Ruby library which parses media filenames and extracts metadata (e.g. name and year)

e.g.
 
 * Primer.2004.DVDRip.x264.AC3.avi become Name => 'Primer', year => 2004
 * ManMen.S01E01.720p.HDTV.x264-CTU.mkv becomes Name => 'ManMen', series => 1, episode => 1

Most media file names sourced from P2P sites are not immediately machine readable, however, 
they generally have a fairly consistent naming scheme.  ToName applies some simple parsing rules to 
extract enough information so that the movie/tv show can be looked up in a metadata database 
(e.g. [IMDB](http://www.imdb.com)).  ToName does not claim a 100% success rate, however, 
it's generally good enough to find a match on IMDB.

Features
--------
 * Extract movie name and year
 * Extract TV show series and episode
 * Will look at the parent folder name if media name looks like it has been abbreviated
 * Works with both media and torrent filenames

Installation
------------

	gem install toname

Examples
--------

	ruby-1.9.2-preview3 > require 'to_name'
	 => true 
	ruby-1.9.2-preview3 > info = ToName.to_name('Primer.2004.DVDRip.x264.AC3.avi')
	 => Primer (2004) 
	ruby-1.9.2-preview3 > info.name
	 => "Primer" 
	ruby-1.9.2-preview3 > info.year
	 => 2004 
	ruby-1.9.2-preview3 > info = ToName.to_name('ManMen.S01E01.720p.HDTV.x264-CTU.mkv')
	 => ManMen S: 1 E: 1 
	ruby-1.9.2-preview3 > info.name
	 => "ManMen"
	ruby-1.9.2-preview3 > info.series
	 => 1 
	ruby-1.9.2-preview3 > info.episode
	 => 1 
	
Licence
-------
MIT

Contact
-------
Sam Cavenagh [(cavenaghweb@hotmail.com)](mailto:cavenaghweb@hotmail.com)
