# static_dynamic_lib_sample

linux下的.a , .so 加上makefile大概要怎麼寫, Gary給一版後  東湊西湊在改一點  可能有更好寫法
參考這教怎麼cd進去make
http://owen.sj.ca.us/~rk/howto/slides/make/slides/makerecurs.html 
教makefile基本
http://maxubuntu.blogspot.tw/2010/02/makefile.html




假設我build .so的時候沒有link .a
compile OK

symbol table會顯示 *UND* 用到的symbol

然後我exe link .so的時候他會說  找不到那個UND symbol
所以我要額外-l  static lib給他
然後objdump -t exe 會看到 .a的symbol都被包到exe
反之

如果.so 有link  .a  就變成
.so symbol table中有a的所有symbol

exe link .so , exe中沒有.a的symbol  , only .so的

