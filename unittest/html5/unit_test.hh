#include <tut/tut.hpp>


#define FLINGO_TEST_GROUP_DEF(TEST_GROUP_DATA_STRUCT, TEST_GROUP_NAME) \
namespace tut { \
	typedef test_group<TEST_GROUP_DATA_STRUCT> specific_test_group;\
	typedef specific_test_group::object object;\
namespace { \
	specific_test_group tf(TEST_GROUP_NAME);\
}\
/* END OF FLINGO_TEST_GROUP_DEF(TEST_GROUP_DATA_STRUCT, TEST_GROUP_NAME) */

#define FLINGO_TEST_DEF( NUMBER ) \
template<> \
template<> \
void object::test<NUMBER>() {

#define FLINGO_NAMED_TEST_DEF( NUMBER, NAME ) \
template<> \
template<> \
void object::test<NUMBER>() { \
	set_test_name(NAME);

#define FLINGO_TEST_DEF_END }

#define FLINGO_TEST_GROUP_END }

