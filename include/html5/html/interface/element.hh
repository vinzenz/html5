#ifndef GUARD_HTML5_HTML_ELEMENT_HH_INCLUDED
#define GUARD_HTML5_HTML_ELEMENT_HH_INCLUDED

namespace html5 {
namespace html {

class element : public dom::element, dom::node {
public:
	element();
	virtual ~element();

	//	W3C HTML Element 	
	//		Properties
	//			accessKey
	//			className
	//			dir
	//			id
	//			innerHTML
	//			lang
	//			tabIndex
	//			title

    //		Methods
	//			toString()
};

}}

#endif //GUARD_HTML5_HTML_ELEMENT_HH_INCLUDED

