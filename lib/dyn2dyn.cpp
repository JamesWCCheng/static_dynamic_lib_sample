#include "dynamic.h"

#include <iostream>

void CallDynamic()
{
  std::cout<<"I'm caller to dynamic.so\n";
  DynamicFoo();
}