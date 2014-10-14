#include <vector>
#include <iostream>

int	main()
{
  std::vector<int>   v1;

  v1.push_back(42); 
  v1.push_back(12);  
  v1.push_back(62);

  std::cout << v1.front() << std::endl;
  std::cout << v1.back() << std::endl;
  std::cout << v1[1] << std::endl;
}
