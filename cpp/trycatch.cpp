#include <stdexcept>
#include <iostream>

int main()
{
  std::cout << "Before catch" << std::endl;
  try
  {
    std::cout << "Before throw" << std::endl;
    throw std::runtime_error("error");
    std::cout << "After throw" << std::endl;
  }
  catch (const std::runtime_error& e)
    {
      std::cout << "std::runtime_error error, " << e.what() << std::endl;
    }
  std::cout << "After catch" << std::endl;
}
