#ifndef GUARD_HTML5_HTML_INTERFACE_AUDIO_HH_INCLUDED
#define GUARD_HTML5_HTML_INTERFACE_AUDIO_HH_INCLUDED

#include <html5/html/interface/media.hh>

namespace html5 {
namespace html {
namespace interface {

class audio : public media {
public:
	audio();
	virtual ~audio();

	//	W3C HTMLAudioElement
	//		Attributes:
	//			src
	//			preload
	//			autoplay
	//			mediagroup
	//			loop
	//			muted
	//			controls
};

}}}

#endif //GUARD_HTML5_HTML_INTERFACE_AUDIO_HH_INCLUDED

