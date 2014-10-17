#include "stdafx.h"
#include "Horse.h"

Horse::Horse()
{
}


Horse::~Horse()
{
}

void Horse::eat() const
{
	std::cout << "Eating in horse class" << std::endl;
}

void Horse::walk() const
{
	std::cout << "Walking in horse class" << std::endl;
}
