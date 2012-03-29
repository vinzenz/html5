#ifndef GUARD_HTML5_HTML_INTERFACE_BODY_HH_INCLUDED
#define GUARD_HTML5_HTML_INTERFACE_BODY_HH_INCLUDED

namespace html5 {
namespace html {
namespace interface {

class body : public element {
public:
	body();
	virtual ~body();

	//	W3C HTMLBodyElement
	//		Properties
	//			aLink
	//			background
	//			bgColor
	//			link
	//			text
	//			vLink
	//		Events
	//			onload
};

}}}

#endif //GUARD_HTML5_HTML_INTERFACE_BODY_HH_INCLUDED

