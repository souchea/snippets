#include <map>
#include <iostream>
#include <string>

int	main()
{
  std::map<int, std::string> english;

  english[0] = "zero";
  english[1] = "one";
  english[2] = "two";

  std::cout << english[0] << std::endl;
  std::cout << english[1] << std::endl;

  return (0);
}

