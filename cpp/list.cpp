#include <list>
#include <iostream>
#include <string>

int	main()
{
  std::list<std::string>	hobbits;

  hobbits.push_back("Frodo");
  hobbits.push_back("Sam");

  std::cout << hobbits.front() << std::endl;
  
  hobbits.pop_front();

  std::cout << hobbits.front() << std::endl;

  return (0);
}
