CXXFLAGS += -std=c++11 -Wall -Wextra -Werror

HPP_FILES = $(wildcard *.hpp)
COMPILED_HPP_FILES = $(patsubst %.hpp,%.compiled_hpp,$(HPP_FILES))
CPP_FILES = $(wildcard *.cpp)

test: makefile $(CPP_FILES) $(COMPILED_HPP_FILES)
	@$(CXX) -I. $(CXXFLAGS) -O $(CPP_FILES) -o $@
	@./$@

# don't compile catch.hpp header
catch.compiled_hpp: catch.hpp
	@true

# This rule ensures header files build in their own right.
# The quality of header files is important because header files
# are #included from other files and thus have a large span
# of influence (unlike .cpp files which are not #included)

%.compiled_hpp: %.hpp
	@$(CXX) -x c++ -I. $(CXXFLAGS) -c -o $@ $<