file(GLOB thrift_SRC *.c)
target_sources(xlua PUBLIC ${thrift_SRC})


# To build as shared libraries, uncomment all lines below.
		##add_library(libluabpack SHARED luabpack.c longnumberutils.c)
		##target_link_libraries(libluabpack xlua)
		##add_library(libluabitwise SHARED luabitwise.c )
		##target_link_libraries(libluabitwise xlua)
