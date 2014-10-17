#pragma once

#ifndef __ANIMAL__
#define __ANIMAL__

#include <iostream>
#include <string>

class Animal
{
public:
	Animal();
	virtual ~Animal();

public:
	virtual void walk() const;
	void eat() const;
};

#endif