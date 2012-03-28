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
	//			error R/O
	//			-- Network State
	//			src
	//			currentSrc R/O
	//			networkState R/O enum network
	//			preload
	//			buffered R/O TimeRanges

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

