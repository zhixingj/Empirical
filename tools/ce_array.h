//  This file is part of Empirical, https://github.com/devosoft/Empirical
//  Copyright (C) Michigan State University, 2016.
//  Released under the MIT Software license; see doc/LICENSE
//
//  ce_string defines a limited array object for use within a constexpr class or function.
//
//  Note that this class will be slow if used at run-time without conversion to an
//  array or vector first.

#ifndef EMP_CE_ARRAY_H
#define EMP_CE_ARRAY_H

#include <type_traits>

#include "assert.h"
#include "functions.h"

namespace emp {

  template <typename T, int N>
  class ce_array {
  private:
    T value;                 // Current value.
    ce_array<T, N-1> next;   // Additional values.

  public:
    constexpr ce_array() = default;

    using size_t = std::size_t;
    using value_type = T;

    T & operator[](int id) { return (id==0) ? value : next.operator[](id-1); }
  };

  // Specialized version of ce_array for an empty array.
  template <typename T>
  class ce_array<T,0> {
  public:
    using size_t = std::size_t;
    using value_type = T;

    // Cannot index into an empty array!
    T & operator[](int id) { emp_assert(false); return std::declval<int>; }
  };

}

#endif
