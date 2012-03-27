#ifndef GUARD_HTML5_UI_WINDOW_HH_INCLUDED
#define GUARD_HTML5_UI_WINDOW_HH_INCLUDED

namespace html5 {
namespace ui {

class window {
public:
	window( application & a );
	virtual ~window();

    void show();
	void hide();

	void load( uri const & );
};

}}

#endif //GUARD_HTML5_UI_WINDOW_HH_INCLUDED

