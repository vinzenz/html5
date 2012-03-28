#ifndef GUARD_HTML5_HTML_INTERFACE_MEDIA_HH_INCLUDED
#define GUARD_HTML5_HTML_INTERFACE_MEDIA_HH_INCLUDED

namespace html5 {
namespace html {
namespace interface {

class media : public element {
public:
	//	W3C HTMLMediaElement 
	//		Properties
	//			-- Error State
	//			error R/O MediaError
	//			-- Network State
	//			src string
	//			currentSrc R/O string
	//			networkState R/O enum network
	//			preload string
	//			buffered R/O TimeRanges
	//			-- Ready State
	//			readyState R/O uint16
	//			seeking R/O bool
	//			currentTime double
	//			initialTime R/O double
	//			duration R/O double
	//			startOffsetTime R/O Date
	//			defaultPlaybackRate double
	//			playbackRate double
	//			played R/O TimeRanges
	//			seekable R/O TimeRanges
	//			ended R/O bool
	//			autoplay bool
	//			loop bool
	//			-- Media controller
	//			mediaGroup
	//			controller MediaController
	//			-- controls
	//			controls bool
	//			volume double
	//			muted bool
	//			defaultMuted bool
	//			-- Tracks
	//			audioTracks R/O MultipleTrackList
	//			videoTracks R/O ExclusiveTrackList
	//			textTracks R/O TextTrack[]
	//		Methods
	//			load()
	//			string canPlayType(string)
	//			play()
	//			pause()
	//			MutableTextTrack addTextTrack(string const & kind, string const & label = string(), string const & language = string() )
	

	enum network {
		NETWORK_EMPTY 		= 0,
		NETWORK_IDLE		= 1,
		NETWORK_LOADING 	= 2,
		NETWORK_NO_SOURCE 	= 3
	};

	enum have {
		HAVE_NOTHING		= 0,
		HAVE_METADATA		= 1,
		HAVE_CURRENT_DATA	= 2,
		HAVE_FUTURE_DATA	= 3,
		HAVE_ENOUGH_DATA	= 4
	};
};

}}}

#endif //GUARD_HTML5_HTML_INTERFACE_MEDIA_HH_INCLUDED

