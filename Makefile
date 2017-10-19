NAME		= deb-cpp-test

SRC		= main.cpp
OBJ		= $(SRC:.c=.o)

CC		= g++
CXXFLAGS	= -Wall -Werror

all:		build $(NAME)

build:
	mkdir -p build

%.o:	%.cpp
	$(CC) -c $(CXXFLAGS) $(OBJ)

deb-cpp-test:	$(OBJ)
	$(CC) $(CXXFLAGS) -o build/$(NAME) $(OBJ)
