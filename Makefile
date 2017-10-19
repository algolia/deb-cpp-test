NAME		= deb-cpp-test

SRC		= main.cpp
OBJ		= $(SRC:.cpp=.o)

CC		= g++
CXXFLAGS	= -Wall -Werror

all:		build $(NAME)

build:
	mkdir -p build

obj/%.o:	%.cpp
	$(CC) -c $(CXXFLAGS) $<

deb-cpp-test:	$(OBJ)
	$(CC) $(CXXFLAGS) -o build/$(NAME) $(OBJ)
