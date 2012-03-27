#ifndef GUARD_HTML5_HTML_DOM_NODE_HH_INCLUDED
#define GUARD_HTML5_HTML_DOM_NODE_HH_INCLUDED

namespace html5 {
namespace html {
namespace dom {

class node {
public:
	node();
	virtual ~node();

	//	W3C Node
	//		Properties
	//			attributes
	//			baseURI
	//			childNodes
	//			firstChild
	//			lastChild
	//			localName
	//			namespaceURI
	//			nextSibling
	//			nodeName
	//			nodeType
	//			nodeValue
	//			ownerDocument
	//			parentNode
	//			prefix
	//			previousSibling
	//			textContext
	//		Methods
	//			appendChild()
	//			cloneNode()
	//			compareDocumentPosition()
	//			getFeature(feature, version)
	//			getUserData(key)
	//			hasAttributes()
	//			hasChildNodes()
	//			insertBefore()
	//			isDefaultNamespace()
	//			isEqualNode()
	//			isSameNode()
	//			isSupported()
	//			lookupNamespaceURI()
	//			lookupPrefix()
	//			normalize()
	//			removeChild()
	//			replaceChild()
	//			setUserData(key,value,handler)
};

}}}

#endif //GUARD_HTML5_HTML_DOM_NODE_HH_INCLUDED

