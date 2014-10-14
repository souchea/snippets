#include <iostream>
#include "abstract.hh"

AKoala::AKoala(std::string name)
  :name_(name)
{

}

AKoala::~AKoala() 
{

}

void AKoala::speak()
{
  std::cout << this->name_ << " KREOG !" << std::endl;
}

Thor::Thor()
  : AKoala("thor")
{

}

void Thor::doLecture()
{
  std::cout << this->name_ << " says something funny" << std::endl;
}

Zaz::Zaz()
  : AKoala("zaz")
{

}

void Zaz::doLecture()
{
  std::cout << this->name_ << " do something serious" << std::endl;
}

int main()
{
  AKoala* firstKoala = new Thor();
  AKoala* secondKoala = new Zaz();

  firstKoala->speak();
  firstKoala->doLecture();

  secondKoala->speak();
  secondKoala->doLecture();
}
