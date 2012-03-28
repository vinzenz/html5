#ifndef GUARD_HTML5_HTML_INTERFACE_ANCHOR_HH_INCLUDED
#define GUARD_HTML5_HTML_INTERFACE_ANCHOR_HH_INCLUDED

#include "element.hh"

namespace html5 {
namespace html {
namespace interface {

class anchor : public element {
public:
	anchor();
	virtual ~anchor();

	//	W3C HTMLAnchorElement
	//		Properties
	//			charset
	//			href
	//			hreflang
	//			name
	//			rel
	//			rev
	//			target
	//			type

};

}}}

#endif //GUARD_HTML5_HTML_INTERFACE_ANCHOR_HH_INCLUDED

