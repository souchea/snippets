#include <iostream>

class Out
{
public:
  class Nested
  {
  public:
    void something()
    {
      std::cout << "nested" << std::endl;
    }
  };
};

int main()
{
  Out::Nested n;

  n.something();
  
}
