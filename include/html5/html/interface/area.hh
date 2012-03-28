#ifndef GUARD_HTML5_HTML_INTERFACE_AREA_HH_INCLUDED
#define GUARD_HTML5_HTML_INTERFACE_AREA_HH_INCLUDED

#include <html5/html/interface/element.hh>

namespace html5 {
namespace html {
namespace interface {

class area : public element {
public:
	area();
	virtual ~area();

	//	W3C HTMLAreaElement
	//		Properties:
	//			alt
	//			coords
	//			hash
	//			host
	//			hostname
	//			href
	//			nohref
	//			pathname
	//			port
	//			protocol
	//			search
	//			shape
	//			target
};

}}}

#endif //GUARD_HTML5_HTML_INTERFACE_AREA_HH_INCLUDED

