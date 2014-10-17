#include "stdafx.h"
#include "Animal.h"

Animal::Animal()
{
}


Animal::~Animal()
{
}

void Animal::eat() const
{
	std::cout << "Eating in the Animal class" << std::endl;
}

void Animal::walk() const
{
	std::cout << "Walking in the Animal class" << std::endl;
}