// TestsCpp.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Animal.h"
#include "Horse.h"
#include <iostream>

int _tmain(int argc, _TCHAR* argv[])
{
	Animal* testHorse = new Horse();

	testHorse->eat();
	testHorse->walk();

	std::getchar();

	return 0;
}

