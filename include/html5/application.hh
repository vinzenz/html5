#ifndef GUARD_HTML5_APPLICATION_HH_INCLUDED
#define GUARD_HTML5_APPLICATION_HH_INCLUDED

#include <html5/types/string.hh>

namespace html5 {

class application {
public:
	application();
	virtual ~application();

	virtual void on( events_map & e );
	virtual void on( string const & name, event & e );
	virtual events_map & on();
};

}

#endif //GUARD_HTML5_APPLICATION_HH_INCLUDED

