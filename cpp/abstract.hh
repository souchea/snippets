#include <string>

class AKoala
{

protected:
  std::string name_;

public:
  AKoala(std::string);
  virtual ~AKoala();

  void speak();
  virtual void doLecture() = 0;

};

class Thor : public AKoala
{

public:
  Thor();
  virtual void doLecture();

};

class Zaz : public AKoala
{

public:
  Zaz();
  virtual void doLecture();

};
