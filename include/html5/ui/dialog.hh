#ifndef GUARD_HTML5_UI_DIALOG_HH_INCLUDED
#define GUARD_HTML5_UI_DIALOG_HH_INCLUDED

namespace html5 {
namespace ui {

class dialog {
public:
	dialog( application & a );
	virtual ~dialog();

    void show();
	void hide();

	void load( uri const & );
};

}}

#endif //GUARD_HTML5_UI_DIALOG_HH_INCLUDED

