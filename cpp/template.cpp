
template<typename T>

struct s_list
{
private:
  s_list<T>  *next;
  T data;

public:
  void setData(const T &val)
  {
    data = val;
  }
};

int main()
{
  s_list<int> my_list;

  my_lisy.setData(42);
}
