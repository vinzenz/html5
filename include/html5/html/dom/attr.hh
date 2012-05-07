#ifndef GUARD_HTML5_HTML_DOM_ATTR_HH_INCLUDED
#define GUARD_HTML5_HTML_DOM_ATTR_HH_INCLUDED

#include <html5/types/string.hh>

namespace html5 {
namespace html {
namespace dom {

class attr {
public:
	attr();
	virtual ~attr();

	//	W3C DOM Attr object
	//		Properties
	//			isId
	//			name
	//			ownerElement
	//			schemaTypeInfo
	//			specified
	//			value
	//		Methods
	//			None
	
	// bool is_id() const;
	// property<types::string> name;
	// property<types::string> schemaTypeInfo;
	// property<types::string> value;
	// property<types::string> specified;
};


}}}

#endif //GUARD_HTML5_HTML_DOM_ATTR_HH_INCLUDED

