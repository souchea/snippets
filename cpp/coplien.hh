#include <string>

class Koala
{
private:
  int age_;
  std::string name_;

public:
  Koala();
  Koala(Koala const &);
  Koala& operator=(Koala const &);
  ~Koala();

};
