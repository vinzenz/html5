#ifndef GUARD_HTML5_HTML_INTERFACE_BASE_HH_INCLUDED
#define GUARD_HTML5_HTML_INTERFACE_BASE_HH_INCLUDED

#include <html5/html/interface/element.hh>

namespace html5 {
namespace html {
namespace interface {

class base : public element {
public:
	base();
	virtual ~base();

	//	W3C HTMLBaseElement
	//		Properties
	//			href
	//			target
};

}}}

#endif //GUARD_HTML5_HTML_INTERFACE_BASE_HH_INCLUDED

