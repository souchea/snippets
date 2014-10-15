template<typename T>
struct Pair1 {
  Pair1(T aa, T bb)
    : a(aa), b(bb) {}

  T a;
  T b;
};

template<typename T, typename U>
struct Pair2 {
  Pair2(T aa, U bb)
    : a(aa), b(bb) {}

  T a;
  U b;
};
