#pragma once

#ifndef __HORSE__
#define __HORSE__

#include "Animal.h"
#include <iostream> 

class Horse : public Animal
{
public:
	Horse();
	virtual ~Horse();

public:
	void eat() const;
	void walk() const;

};

#endif /* __HORSE__ */