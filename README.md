# ToName

Overview
--------
ToName is a Ruby library which parses media filenames and extracts metadata (e.g. name and year)

e.g.
 
 * Primer.2004.DVDRip.x264.AC3.avi become Name => 'Primer', year => 2004
 * ManMen.S01E01.720p.HDTV.x264-CTU.mkv becomes Name => 'ManMen', series => 1, episode => 1

Most media file names sourced from P2P sites are not immediately machine readable, however, they generally have a fairly consistent naming schema.  ToName applies some simple parsing rules to extract enough information so that the movie/tv show can be looked up in a metadata database (e.g. [IMDB](http://www.imdb.com)).  ToName does not claim a 100% success rate, however, it's generally good enough to find a match on IMDB.

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

	TODO
	
Licence
-------
MIT

Contact
-------
Sam Cavenagh [(cavenaghweb@hotmail.com)](mailto:cavenaghweb@hotmail.com)