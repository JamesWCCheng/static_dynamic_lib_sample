#include "static.h"

#include "dynamic.h"

#include <iostream>

void DynamicFoo()
{
  std::cout<<"I'm dynamic\n";
  StaticFoo();
}