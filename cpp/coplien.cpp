#include <iostream>
#include <string>

#include "coplien.hh"

Koala::Koala()
  : age_(0), name_("bob")
{
  std::cout << "Default Ctor" << std::endl;
}

Koala::Koala(Koala const & other)
  : age_(other.age_), name_(other.name_)
{
  std::cout << "Copy Ctor" << std::endl;
}

Koala& Koala::operator=(Koala const & other)
{
  std::cout << "assignation operator" << std::endl;
  if (&other != this)
    {
      this->name_ = other.name_;
      this->age_ = other.age_;
    }
  return *this;
}

Koala::~Koala()
{
  std::cout << "Dtor called" << std::endl;
}

int main()
{
  Koala zaz;
  Koala joe(zaz);
  zaz = joe;

  return (0);
}
