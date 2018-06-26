operator new(unsigned long, void*):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-16]
  pop rbp
  ret
operator delete(void*, void*):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  nop
  pop rbp
  ret
std::piecewise_construct:
  .zero 1
std::hash<int>::operator()(int) const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov DWORD PTR [rbp-12], esi
  mov eax, DWORD PTR [rbp-12]
  cdqe
  pop rbp
  ret
std::__detail::_Hash_node_base::_Hash_node_base():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax], 0
  nop
  pop rbp
  ret
std::__detail::_Mod_range_hashing::operator()(unsigned long, unsigned long) const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-16]
  mov edx, 0
  div QWORD PTR [rbp-24]
  mov rax, rdx
  pop rbp
  ret
std::__detail::_Prime_rehash_policy::_Prime_rehash_policy(float):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  movss DWORD PTR [rbp-12], xmm0
  mov rax, QWORD PTR [rbp-8]
  movss xmm0, DWORD PTR [rbp-12]
  movss DWORD PTR [rax], xmm0
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+8], 0
  nop
  pop rbp
  ret
std::__detail::_Prime_rehash_policy::_M_state() const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax+8]
  pop rbp
  ret
std::__detail::_Prime_rehash_policy::_M_reset(unsigned long):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov QWORD PTR [rax+8], rdx
  nop
  pop rbp
  ret
powmod(int, int, int):
  push rbp
  mov rbp, rsp
  mov DWORD PTR [rbp-20], edi
  mov DWORD PTR [rbp-24], esi
  mov DWORD PTR [rbp-28], edx
  mov DWORD PTR [rbp-4], 1
  mov eax, DWORD PTR [rbp-20]
  cdq
  idiv DWORD PTR [rbp-28]
  mov DWORD PTR [rbp-20], edx
.L16:
  cmp DWORD PTR [rbp-24], 0
  jle .L14
  mov eax, DWORD PTR [rbp-24]
  and eax, 1
  test eax, eax
  je .L15
  mov eax, DWORD PTR [rbp-4]
  imul eax, DWORD PTR [rbp-20]
  cdq
  idiv DWORD PTR [rbp-28]
  mov DWORD PTR [rbp-4], edx
.L15:
  sar DWORD PTR [rbp-24]
  mov eax, DWORD PTR [rbp-20]
  imul eax, DWORD PTR [rbp-20]
  cdq
  idiv DWORD PTR [rbp-28]
  mov DWORD PTR [rbp-20], edx
  jmp .L16
.L14:
  mov eax, DWORD PTR [rbp-4]
  pop rbp
  ret
__gnu_cxx::__enable_if<std::__is_integer<int>::__value, double>::__type std::sqrt<int>(int):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], edi
  cvtsi2sd xmm0, DWORD PTR [rbp-4]
  call sqrt
  movq rax, xmm0
  mov QWORD PTR [rbp-16], rax
  movsd xmm0, QWORD PTR [rbp-16]
  leave
  ret
std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>::_Hashtable_ebo_helper():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::allocator()
  nop
  leave
  ret
std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>::~_Hashtable_ebo_helper():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::~allocator()
  nop
  leave
  ret
std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_Hashtable_alloc():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>::_Hashtable_ebo_helper()
  nop
  leave
  ret
std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::~_Hashtable_alloc():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>::~_Hashtable_ebo_helper()
  nop
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_Hashtable():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_Hashtable_alloc()
  mov rax, QWORD PTR [rbp-8]
  lea rdx, [rax+48]
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax], rdx
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+8], 1
  mov rax, QWORD PTR [rbp-8]
  add rax, 16
  mov rdi, rax
  call std::__detail::_Hash_node_base::_Hash_node_base()
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+24], 0
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  movss xmm0, DWORD PTR .LC0[rip]
  mov rdi, rax
  call std::__detail::_Prime_rehash_policy::_Prime_rehash_policy(float)
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+48], 0
  nop
  leave
  ret
std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::unordered_map():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_Hashtable()
  nop
  leave
  ret
std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::~unordered_map():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::~_Hashtable()
  nop
  leave
  ret
discreteLogarithm(int, int, int):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 120
  mov DWORD PTR [rbp-116], edi
  mov DWORD PTR [rbp-120], esi
  mov DWORD PTR [rbp-124], edx
  mov eax, DWORD PTR [rbp-124]
  mov edi, eax
  call __gnu_cxx::__enable_if<std::__is_integer<int>::__value, double>::__type std::sqrt<int>(int)
  cvttsd2si eax, xmm0
  add eax, 1
  mov DWORD PTR [rbp-28], eax
  lea rax, [rbp-96]
  mov rdi, rax
  call std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::unordered_map()
  mov eax, DWORD PTR [rbp-28]
  mov DWORD PTR [rbp-20], eax
.L29:
  cmp DWORD PTR [rbp-20], 0
  jle .L28
  mov eax, DWORD PTR [rbp-20]
  imul eax, DWORD PTR [rbp-28]
  mov ecx, eax
  mov edx, DWORD PTR [rbp-124]
  mov eax, DWORD PTR [rbp-116]
  mov esi, ecx
  mov edi, eax
  call powmod(int, int, int)
  mov DWORD PTR [rbp-36], eax
  lea rdx, [rbp-36]
  lea rax, [rbp-96]
  mov rsi, rdx
  mov rdi, rax
  call std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int&&)
  mov rdx, rax
  mov eax, DWORD PTR [rbp-20]
  mov DWORD PTR [rdx], eax
  sub DWORD PTR [rbp-20], 1
  jmp .L29
.L28:
  mov DWORD PTR [rbp-24], 0
.L34:
  mov eax, DWORD PTR [rbp-24]
  cmp eax, DWORD PTR [rbp-28]
  jge .L30
  mov edx, DWORD PTR [rbp-124]
  mov ecx, DWORD PTR [rbp-24]
  mov eax, DWORD PTR [rbp-116]
  mov esi, ecx
  mov edi, eax
  call powmod(int, int, int)
  imul eax, DWORD PTR [rbp-120]
  cdq
  idiv DWORD PTR [rbp-124]
  mov eax, edx
  mov DWORD PTR [rbp-100], eax
  lea rdx, [rbp-100]
  lea rax, [rbp-96]
  mov rsi, rdx
  mov rdi, rax
  call std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int const&)
  mov eax, DWORD PTR [rax]
  test eax, eax
  setne al
  test al, al
  je .L31
  lea rdx, [rbp-100]
  lea rax, [rbp-96]
  mov rsi, rdx
  mov rdi, rax
  call std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int const&)
  mov eax, DWORD PTR [rax]
  imul eax, DWORD PTR [rbp-28]
  sub eax, DWORD PTR [rbp-24]
  mov DWORD PTR [rbp-32], eax
  mov eax, DWORD PTR [rbp-32]
  cmp eax, DWORD PTR [rbp-124]
  jge .L31
  mov ebx, DWORD PTR [rbp-32]
  jmp .L33
.L31:
  add DWORD PTR [rbp-24], 1
  jmp .L34
.L30:
  mov ebx, -1
.L33:
  lea rax, [rbp-96]
  mov rdi, rax
  call std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::~unordered_map()
  mov eax, ebx
  jmp .L38
  mov rbx, rax
  lea rax, [rbp-96]
  mov rdi, rax
  call std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::~unordered_map()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L38:
  add rsp, 120
  pop rbx
  pop rbp
  ret
main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], 2
  mov DWORD PTR [rbp-8], 3
  mov DWORD PTR [rbp-12], 5
  mov edx, DWORD PTR [rbp-12]
  mov ecx, DWORD PTR [rbp-8]
  mov eax, DWORD PTR [rbp-4]
  mov esi, ecx
  mov edi, eax
  call discreteLogarithm(int, int, int)
  mov esi, eax
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
  mov esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
  mov DWORD PTR [rbp-4], 3
  mov DWORD PTR [rbp-8], 7
  mov DWORD PTR [rbp-12], 11
  mov edx, DWORD PTR [rbp-12]
  mov ecx, DWORD PTR [rbp-8]
  mov eax, DWORD PTR [rbp-4]
  mov esi, ecx
  mov edi, eax
  call discreteLogarithm(int, int, int)
  mov esi, eax
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
  mov eax, 0
  leave
  ret
int&& std::forward<int>(std::remove_reference<int>::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::allocator():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::new_allocator()
  nop
  leave
  ret
std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::~allocator():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::~new_allocator()
  nop
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::~_Hashtable():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::clear()
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_deallocate_buckets()
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::~_Hashtable_alloc()
  nop
  leave
  ret
std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int&&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call std::remove_reference<int&>::type&& std::move<int&>(int&)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Map_base<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>, true>::operator[](int&&)
  leave
  ret
std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int const&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Map_base<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>, true>::operator[](int const&)
  leave
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::new_allocator():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  nop
  pop rbp
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::~new_allocator():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  nop
  pop rbp
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::clear():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_begin() const
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_deallocate_nodes(std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax+8]
  lea rdx, [0+rax*8]
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  mov esi, 0
  mov rdi, rax
  call memset
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+24], 0
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+16], 0
  nop
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_deallocate_buckets():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rax+8]
  mov rax, QWORD PTR [rbp-8]
  mov rcx, QWORD PTR [rax]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_deallocate_buckets(std::__detail::_Hash_node_base**, unsigned long)
  nop
  leave
  ret
std::remove_reference<int&>::type&& std::move<int&>(int&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::__detail::_Map_base<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>, true>::operator[](int&&):
  push rbp
  mov rbp, rsp
  sub rsp, 80
  mov QWORD PTR [rbp-72], rdi
  mov QWORD PTR [rbp-80], rsi
  mov rax, QWORD PTR [rbp-72]
  mov QWORD PTR [rbp-8], rax
  mov rdx, QWORD PTR [rbp-80]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_hash_code(int const&) const
  mov QWORD PTR [rbp-16], rax
  mov rdx, QWORD PTR [rbp-16]
  mov rcx, QWORD PTR [rbp-80]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_bucket_index(int const&, unsigned long) const
  mov QWORD PTR [rbp-24], rax
  mov rcx, QWORD PTR [rbp-16]
  mov rdx, QWORD PTR [rbp-80]
  mov rsi, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_find_node(unsigned long, int const&, unsigned long) const
  mov QWORD PTR [rbp-32], rax
  cmp QWORD PTR [rbp-32], 0
  jne .L57
  mov rax, QWORD PTR [rbp-80]
  mov rdi, rax
  call std::remove_reference<int&>::type&& std::move<int&>(int&)
  mov rdx, rax
  lea rax, [rbp-48]
  mov rsi, rdx
  mov rdi, rax
  call std::tuple<int&&> std::forward_as_tuple<int>(int&&)
  lea rcx, [rbp-49]
  lea rdx, [rbp-48]
  mov rax, QWORD PTR [rbp-8]
  mov esi, OFFSET FLAT:std::piecewise_construct
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_allocate_node<std::piecewise_construct_t const&, std::tuple<int&&>, std::tuple<> >(std::piecewise_construct_t const&, std::tuple<int&&>&&, std::tuple<>&&)
  mov QWORD PTR [rbp-32], rax
  mov rcx, QWORD PTR [rbp-32]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_unique_node(unsigned long, unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  mov QWORD PTR [rbp-40], rax
  lea rax, [rbp-40]
  mov rdi, rax
  call std::__detail::_Node_iterator<std::pair<int const, int>, false, false>::operator->() const
  add rax, 4
  jmp .L58
.L57:
  mov rax, QWORD PTR [rbp-32]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_v()
  add rax, 4
.L58:
  leave
  ret
std::__detail::_Map_base<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>, true>::operator[](int const&):
  push rbp
  mov rbp, rsp
  sub rsp, 80
  mov QWORD PTR [rbp-72], rdi
  mov QWORD PTR [rbp-80], rsi
  mov rax, QWORD PTR [rbp-72]
  mov QWORD PTR [rbp-8], rax
  mov rdx, QWORD PTR [rbp-80]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_hash_code(int const&) const
  mov QWORD PTR [rbp-16], rax
  mov rdx, QWORD PTR [rbp-16]
  mov rcx, QWORD PTR [rbp-80]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_bucket_index(int const&, unsigned long) const
  mov QWORD PTR [rbp-24], rax
  mov rcx, QWORD PTR [rbp-16]
  mov rdx, QWORD PTR [rbp-80]
  mov rsi, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_find_node(unsigned long, int const&, unsigned long) const
  mov QWORD PTR [rbp-32], rax
  cmp QWORD PTR [rbp-32], 0
  jne .L60
  mov rdx, QWORD PTR [rbp-80]
  lea rax, [rbp-48]
  mov rsi, rdx
  mov rdi, rax
  call std::tuple<int const&>::tuple<void, true>(int const&)
  lea rcx, [rbp-49]
  lea rdx, [rbp-48]
  mov rax, QWORD PTR [rbp-8]
  mov esi, OFFSET FLAT:std::piecewise_construct
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_allocate_node<std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<> >(std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&)
  mov QWORD PTR [rbp-32], rax
  mov rcx, QWORD PTR [rbp-32]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_unique_node(unsigned long, unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  mov QWORD PTR [rbp-40], rax
  lea rax, [rbp-40]
  mov rdi, rax
  call std::__detail::_Node_iterator<std::pair<int const, int>, false, false>::operator->() const
  add rax, 4
  jmp .L61
.L60:
  mov rax, QWORD PTR [rbp-32]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_v()
  add rax, 4
.L61:
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_begin() const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax+16]
  pop rbp
  ret
std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_deallocate_nodes(std::__detail::_Hash_node<std::pair<int const, int>, false>*):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
.L66:
  cmp QWORD PTR [rbp-32], 0
  je .L67
  mov rax, QWORD PTR [rbp-32]
  mov QWORD PTR [rbp-8], rax
  mov rax, QWORD PTR [rbp-32]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>::_M_next() const
  mov QWORD PTR [rbp-32], rax
  mov rdx, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rbp-24]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_deallocate_node(std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  jmp .L66
.L67:
  nop
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_deallocate_buckets(std::__detail::_Hash_node_base**, unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rdx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_uses_single_bucket(std::__detail::_Hash_node_base**) const
  test al, al
  jne .L71
  mov rdx, QWORD PTR [rbp-24]
  mov rcx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_deallocate_buckets(std::__detail::_Hash_node_base**, unsigned long)
  jmp .L68
.L71:
  nop
.L68:
  leave
  ret
std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_hash_code(int const&) const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_h1() const
  mov rdx, rax
  mov rax, QWORD PTR [rbp-16]
  mov eax, DWORD PTR [rax]
  mov esi, eax
  mov rdi, rdx
  call std::hash<int>::operator()(int) const
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_bucket_index(int const&, unsigned long) const:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-8]
  mov rcx, QWORD PTR [rax+8]
  mov rdx, QWORD PTR [rbp-24]
  mov rsi, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_bucket_index(int const&, unsigned long, unsigned long) const
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_find_node(unsigned long, int const&, unsigned long) const:
  push rbp
  mov rbp, rsp
  sub rsp, 48
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov QWORD PTR [rbp-40], rdx
  mov QWORD PTR [rbp-48], rcx
  mov rcx, QWORD PTR [rbp-48]
  mov rdx, QWORD PTR [rbp-40]
  mov rsi, QWORD PTR [rbp-32]
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_find_before_node(unsigned long, int const&, unsigned long) const
  mov QWORD PTR [rbp-8], rax
  cmp QWORD PTR [rbp-8], 0
  je .L77
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  jmp .L78
.L77:
  mov eax, 0
.L78:
  leave
  ret
std::tuple<int&&>::tuple(std::tuple<int&&>&&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, rdx
  mov rdi, rax
  call std::_Tuple_impl<0ul, int&&>::_Tuple_impl(std::_Tuple_impl<0ul, int&&>&&)
  nop
  leave
  ret
std::tuple<int&&> std::forward_as_tuple<int>(int&&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call int&& std::forward<int>(std::remove_reference<int>::type&)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call std::tuple<int&&>::tuple<int, true>(int&&)
  mov rax, QWORD PTR [rbp-8]
  leave
  ret
std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_Hash_node_value_base():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node_base::_Hash_node_base()
  nop
  leave
  ret
std::__detail::_Hash_node<std::pair<int const, int>, false>::_Hash_node():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_Hash_node_value_base()
  nop
  leave
  ret
std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_allocate_node<std::piecewise_construct_t const&, std::tuple<int&&>, std::tuple<> >(std::piecewise_construct_t const&, std::tuple<int&&>&&, std::tuple<>&&):
  push rbp
  mov rbp, rsp
  push r13
  push r12
  push rbx
  sub rsp, 72
  mov QWORD PTR [rbp-72], rdi
  mov QWORD PTR [rbp-80], rsi
  mov QWORD PTR [rbp-88], rdx
  mov QWORD PTR [rbp-96], rcx
  mov rax, QWORD PTR [rbp-72]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov esi, 1
  mov rdi, rax
  call std::allocator_traits<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::allocate(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >&, unsigned long)
  mov QWORD PTR [rbp-40], rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__addressof<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::__detail::_Hash_node<std::pair<int const, int>, false>&)
  mov QWORD PTR [rbp-48], rax
  mov rax, QWORD PTR [rbp-72]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rdx, rax
  lea rax, [rbp-49]
  mov rsi, rdx
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > const&)
  mov rax, QWORD PTR [rbp-48]
  mov rsi, rax
  mov edi, 16
  call operator new(unsigned long, void*)
  test rax, rax
  je .L86
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>::_Hash_node()
.L86:
  mov rax, QWORD PTR [rbp-96]
  mov rdi, rax
  call std::tuple<>&& std::forward<std::tuple<> >(std::remove_reference<std::tuple<> >::type&)
  mov r13, rax
  mov rax, QWORD PTR [rbp-88]
  mov rdi, rax
  call std::tuple<int&&>&& std::forward<std::tuple<int&&> >(std::remove_reference<std::tuple<int&&> >::type&)
  mov r12, rax
  mov rax, QWORD PTR [rbp-80]
  mov rdi, rax
  call std::piecewise_construct_t const& std::forward<std::piecewise_construct_t const&>(std::remove_reference<std::piecewise_construct_t const&>::type&)
  mov rbx, rax
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr()
  mov rsi, rax
  lea rax, [rbp-49]
  mov r8, r13
  mov rcx, r12
  mov rdx, rbx
  mov rdi, rax
  call void std::allocator_traits<std::allocator<std::pair<int const, int> > >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int&&>, std::tuple<> >(std::allocator<std::pair<int const, int> >&, std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int&&>&&, std::tuple<>&&)
  mov rbx, QWORD PTR [rbp-48]
  lea rax, [rbp-49]
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::~allocator()
  mov rax, rbx
  jmp .L94
  mov rbx, rax
  lea rax, [rbp-49]
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::~allocator()
  mov rax, rbx
  jmp .L89
.L89:
  mov rdi, rax
  call __cxa_begin_catch
  mov rax, QWORD PTR [rbp-72]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rcx, rax
  mov rax, QWORD PTR [rbp-40]
  mov edx, 1
  mov rsi, rax
  mov rdi, rcx
  call std::allocator_traits<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::deallocate(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >&, std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long)
  call __cxa_rethrow
  mov rbx, rax
  call __cxa_end_catch
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L94:
  add rsp, 72
  pop rbx
  pop r12
  pop r13
  pop rbp
  ret

std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_unique_node(unsigned long, unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 88
  mov QWORD PTR [rbp-72], rdi
  mov QWORD PTR [rbp-80], rsi
  mov QWORD PTR [rbp-88], rdx
  mov QWORD PTR [rbp-96], rcx
  mov rax, QWORD PTR [rbp-72]
  add rax, 32
  mov rdi, rax
  call std::__detail::_Prime_rehash_policy::_M_state() const
  mov QWORD PTR [rbp-40], rax
  lea rax, [rbp-40]
  mov QWORD PTR [rbp-24], rax
  mov rax, QWORD PTR [rbp-72]
  lea rdi, [rax+32]
  mov rax, QWORD PTR [rbp-72]
  mov rdx, QWORD PTR [rax+24]
  mov rax, QWORD PTR [rbp-72]
  mov rax, QWORD PTR [rax+8]
  mov ecx, 1
  mov rsi, rax
  call std::__detail::_Prime_rehash_policy::_M_need_rehash(unsigned long, unsigned long, unsigned long) const
  mov ecx, eax
  mov rax, rdx
  mov DWORD PTR [rbp-64], ecx
  mov QWORD PTR [rbp-56], rax
  movzx eax, BYTE PTR [rbp-64]
  test al, al
  je .L96
  mov rcx, QWORD PTR [rbp-56]
  mov rdx, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-72]
  mov rsi, rcx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_rehash(unsigned long, unsigned long const&)
  mov rax, QWORD PTR [rbp-72]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_extract()
  mov rbx, rax
  mov rax, QWORD PTR [rbp-96]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_v()
  mov rsi, rax
  mov rdi, rbx
  call decltype ((get<0>)((forward<std::pair<int const, int>&>)({parm#1}))) std::__detail::_Select1st::operator()<std::pair<int const, int>&>(std::pair<int const, int>&) const
  mov rcx, rax
  mov rdx, QWORD PTR [rbp-88]
  mov rax, QWORD PTR [rbp-72]
  mov rsi, rcx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_bucket_index(int const&, unsigned long) const
  mov QWORD PTR [rbp-80], rax
.L96:
  mov rdx, QWORD PTR [rbp-88]
  mov rcx, QWORD PTR [rbp-96]
  mov rax, QWORD PTR [rbp-72]
  mov rsi, rcx
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_store_code(std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long) const
  mov rdx, QWORD PTR [rbp-96]
  mov rcx, QWORD PTR [rbp-80]
  mov rax, QWORD PTR [rbp-72]
  mov rsi, rcx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_bucket_begin(unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  mov rax, QWORD PTR [rbp-72]
  mov rax, QWORD PTR [rax+24]
  lea rdx, [rax+1]
  mov rax, QWORD PTR [rbp-72]
  mov QWORD PTR [rax+24], rdx
  mov rdx, QWORD PTR [rbp-96]
  lea rax, [rbp-32]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Node_iterator<std::pair<int const, int>, false, false>::_Node_iterator(std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  mov rax, QWORD PTR [rbp-32]
  jmp .L102
  mov rdi, rax
  call __cxa_begin_catch
  mov rdx, QWORD PTR [rbp-96]
  mov rax, QWORD PTR [rbp-72]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_deallocate_node(std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  call __cxa_rethrow
  mov rbx, rax
  call __cxa_end_catch
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L102:
  add rsp, 88
  pop rbx
  pop rbp
  ret

std::__detail::_Node_iterator<std::pair<int const, int>, false, false>::operator->() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr()
  leave
  ret
std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_v():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr()
  leave
  ret
std::tuple<int const&>::tuple<void, true>(int const&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, rdx
  mov rdi, rax
  call std::_Tuple_impl<0ul, int const&>::_Tuple_impl(int const&)
  nop
  leave
  ret
std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_allocate_node<std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<> >(std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&):
  push rbp
  mov rbp, rsp
  push r13
  push r12
  push rbx
  sub rsp, 72
  mov QWORD PTR [rbp-72], rdi
  mov QWORD PTR [rbp-80], rsi
  mov QWORD PTR [rbp-88], rdx
  mov QWORD PTR [rbp-96], rcx
  mov rax, QWORD PTR [rbp-72]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov esi, 1
  mov rdi, rax
  call std::allocator_traits<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::allocate(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >&, unsigned long)
  mov QWORD PTR [rbp-40], rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__addressof<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::__detail::_Hash_node<std::pair<int const, int>, false>&)
  mov QWORD PTR [rbp-48], rax
  mov rax, QWORD PTR [rbp-72]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rdx, rax
  lea rax, [rbp-49]
  mov rsi, rdx
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > const&)
  mov rax, QWORD PTR [rbp-48]
  mov rsi, rax
  mov edi, 16
  call operator new(unsigned long, void*)
  test rax, rax
  je .L110
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>::_Hash_node()
.L110:
  mov rax, QWORD PTR [rbp-96]
  mov rdi, rax
  call std::tuple<>&& std::forward<std::tuple<> >(std::remove_reference<std::tuple<> >::type&)
  mov r13, rax
  mov rax, QWORD PTR [rbp-88]
  mov rdi, rax
  call std::tuple<int const&>&& std::forward<std::tuple<int const&> >(std::remove_reference<std::tuple<int const&> >::type&)
  mov r12, rax
  mov rax, QWORD PTR [rbp-80]
  mov rdi, rax
  call std::piecewise_construct_t const& std::forward<std::piecewise_construct_t const&>(std::remove_reference<std::piecewise_construct_t const&>::type&)
  mov rbx, rax
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr()
  mov rsi, rax
  lea rax, [rbp-49]
  mov r8, r13
  mov rcx, r12
  mov rdx, rbx
  mov rdi, rax
  call void std::allocator_traits<std::allocator<std::pair<int const, int> > >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<> >(std::allocator<std::pair<int const, int> >&, std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&)
  mov rbx, QWORD PTR [rbp-48]
  lea rax, [rbp-49]
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::~allocator()
  mov rax, rbx
  jmp .L118
  mov rbx, rax
  lea rax, [rbp-49]
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::~allocator()
  mov rax, rbx
  jmp .L113
.L113:
  mov rdi, rax
  call __cxa_begin_catch
  mov rax, QWORD PTR [rbp-72]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rcx, rax
  mov rax, QWORD PTR [rbp-40]
  mov edx, 1
  mov rsi, rax
  mov rdi, rcx
  call std::allocator_traits<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::deallocate(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >&, std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long)
  call __cxa_rethrow
  mov rbx, rax
  call __cxa_end_catch
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L118:
  add rsp, 72
  pop rbx
  pop r12
  pop r13
  pop rbp
  ret

std::__detail::_Hash_node<std::pair<int const, int>, false>::_M_next() const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  pop rbp
  ret
std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_deallocate_node(std::__detail::_Hash_node<std::pair<int const, int>, false>*):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 40
  mov QWORD PTR [rbp-40], rdi
  mov QWORD PTR [rbp-48], rsi
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::pointer_traits<std::__detail::_Hash_node<std::pair<int const, int>, false>*>::pointer_to(std::__detail::_Hash_node<std::pair<int const, int>, false>&)
  mov QWORD PTR [rbp-24], rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rdx, rax
  lea rax, [rbp-25]
  mov rsi, rdx
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > const&)
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr()
  mov rdx, rax
  lea rax, [rbp-25]
  mov rsi, rdx
  mov rdi, rax
  call void std::allocator_traits<std::allocator<std::pair<int const, int> > >::destroy<std::pair<int const, int> >(std::allocator<std::pair<int const, int> >&, std::pair<int const, int>*)
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rcx, rax
  mov rax, QWORD PTR [rbp-24]
  mov edx, 1
  mov rsi, rax
  mov rdi, rcx
  call std::allocator_traits<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::deallocate(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >&, std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long)
  lea rax, [rbp-25]
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::~allocator()
  jmp .L124
  mov rbx, rax
  lea rax, [rbp-25]
  mov rdi, rax
  call std::allocator<std::pair<int const, int> >::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L124:
  add rsp, 40
  pop rbx
  pop rbp
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_uses_single_bucket(std::__detail::_Hash_node_base**) const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  add rax, 48
  cmp QWORD PTR [rbp-16], rax
  sete al
  movzx eax, al
  test rax, rax
  setne al
  pop rbp
  ret
std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_deallocate_buckets(std::__detail::_Hash_node_base**, unsigned long):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 56
  mov QWORD PTR [rbp-40], rdi
  mov QWORD PTR [rbp-48], rsi
  mov QWORD PTR [rbp-56], rdx
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::pointer_traits<std::__detail::_Hash_node_base**>::pointer_to(std::__detail::_Hash_node_base*&)
  mov QWORD PTR [rbp-24], rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rdx, rax
  lea rax, [rbp-25]
  mov rsi, rdx
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node_base*>::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > const&)
  mov rdx, QWORD PTR [rbp-56]
  mov rcx, QWORD PTR [rbp-24]
  lea rax, [rbp-25]
  mov rsi, rcx
  mov rdi, rax
  call std::allocator_traits<std::allocator<std::__detail::_Hash_node_base*> >::deallocate(std::allocator<std::__detail::_Hash_node_base*>&, std::__detail::_Hash_node_base**, unsigned long)
  lea rax, [rbp-25]
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node_base*>::~allocator()
  jmp .L130
  mov rbx, rax
  lea rax, [rbp-25]
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node_base*>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L130:
  add rsp, 56
  pop rbx
  pop rbp
  ret
std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_h1() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<1, std::hash<int>, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<1, std::hash<int>, true> const&)
  leave
  ret
std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_bucket_index(int const&, unsigned long, unsigned long) const:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov QWORD PTR [rbp-32], rcx
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_h2() const
  mov rcx, rax
  mov rdx, QWORD PTR [rbp-32]
  mov rax, QWORD PTR [rbp-24]
  mov rsi, rax
  mov rdi, rcx
  call std::__detail::_Mod_range_hashing::operator()(unsigned long, unsigned long) const
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_find_before_node(unsigned long, int const&, unsigned long) const:
  push rbp
  mov rbp, rsp
  sub rsp, 48
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov QWORD PTR [rbp-40], rdx
  mov QWORD PTR [rbp-48], rcx
  mov rax, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rbp-32]
  sal rdx, 3
  add rax, rdx
  mov rax, QWORD PTR [rax]
  mov QWORD PTR [rbp-8], rax
  cmp QWORD PTR [rbp-8], 0
  jne .L136
  mov eax, 0
  jmp .L137
.L136:
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  mov QWORD PTR [rbp-16], rax
.L144:
  mov rcx, QWORD PTR [rbp-16]
  mov rdx, QWORD PTR [rbp-48]
  mov rsi, QWORD PTR [rbp-40]
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call std::__detail::_Hashtable_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<false, false, true> >::_M_equals(int const&, unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*) const
  test al, al
  je .L138
  mov rax, QWORD PTR [rbp-8]
  jmp .L137
.L138:
  mov rax, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rax]
  test rax, rax
  je .L139
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>::_M_next() const
  mov rdx, rax
  mov rax, QWORD PTR [rbp-24]
  mov rsi, rdx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_bucket_index(std::__detail::_Hash_node<std::pair<int const, int>, false>*) const
  cmp QWORD PTR [rbp-32], rax
  je .L140
.L139:
  mov eax, 1
  jmp .L141
.L140:
  mov eax, 0
.L141:
  test al, al
  jne .L146
  mov rax, QWORD PTR [rbp-16]
  mov QWORD PTR [rbp-8], rax
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>::_M_next() const
  mov QWORD PTR [rbp-16], rax
  jmp .L144
.L146:
  nop
  mov eax, 0
.L137:
  leave
  ret
std::tuple<int&&>::tuple<int, true>(int&&):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 24
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov rbx, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-32]
  mov rdi, rax
  call int&& std::forward<int>(std::remove_reference<int>::type&)
  mov rsi, rax
  mov rdi, rbx
  call std::_Tuple_impl<0ul, int&&>::_Tuple_impl<int>(int&&)
  nop
  add rsp, 24
  pop rbx
  pop rbp
  ret
std::_Tuple_impl<0ul, int&&>::_Tuple_impl(std::_Tuple_impl<0ul, int&&>&&):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 24
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov rbx, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-32]
  mov rdi, rax
  call std::_Tuple_impl<0ul, int&&>::_M_head(std::_Tuple_impl<0ul, int&&>&)
  mov rdi, rax
  call int&& std::forward<int&&>(std::remove_reference<int&&>::type&)
  mov rsi, rax
  mov rdi, rbx
  call std::_Head_base<0ul, int&&, false>::_Head_base<int>(int&&)
  nop
  add rsp, 24
  pop rbx
  pop rbp
  ret
std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>::_S_get(std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>&)
  leave
  ret
std::allocator_traits<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::allocate(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >&, unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rcx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov edx, 0
  mov rsi, rcx
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::allocate(unsigned long, void const*)
  leave
  ret
std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__addressof<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::__detail::_Hash_node<std::pair<int const, int>, false>&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::allocator<std::pair<int const, int> >::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > const&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::pair<int const, int> >::new_allocator()
  nop
  leave
  ret
std::allocator<std::pair<int const, int> >::~allocator():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::pair<int const, int> >::~new_allocator()
  nop
  leave
  ret
std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  add rax, 8
  mov rdi, rax
  call __gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_ptr()
  leave
  ret
std::piecewise_construct_t const& std::forward<std::piecewise_construct_t const&>(std::remove_reference<std::piecewise_construct_t const&>::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::tuple<int&&>&& std::forward<std::tuple<int&&> >(std::remove_reference<std::tuple<int&&> >::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::tuple<>&& std::forward<std::tuple<> >(std::remove_reference<std::tuple<> >::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
void std::allocator_traits<std::allocator<std::pair<int const, int> > >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int&&>, std::tuple<> >(std::allocator<std::pair<int const, int> >&, std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int&&>&&, std::tuple<>&&):
  push rbp
  mov rbp, rsp
  push r12
  push rbx
  sub rsp, 48
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov QWORD PTR [rbp-40], rdx
  mov QWORD PTR [rbp-48], rcx
  mov QWORD PTR [rbp-56], r8
  mov rax, QWORD PTR [rbp-56]
  mov rdi, rax
  call std::tuple<>&& std::forward<std::tuple<> >(std::remove_reference<std::tuple<> >::type&)
  mov r12, rax
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::tuple<int&&>&& std::forward<std::tuple<int&&> >(std::remove_reference<std::tuple<int&&> >::type&)
  mov rbx, rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::piecewise_construct_t const& std::forward<std::piecewise_construct_t const&>(std::remove_reference<std::piecewise_construct_t const&>::type&)
  mov rdx, rax
  mov rsi, QWORD PTR [rbp-32]
  mov rax, QWORD PTR [rbp-24]
  mov r8, r12
  mov rcx, rbx
  mov rdi, rax
  call void __gnu_cxx::new_allocator<std::pair<int const, int> >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int&&>, std::tuple<> >(std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int&&>&&, std::tuple<>&&)
  nop
  add rsp, 48
  pop rbx
  pop r12
  pop rbp
  ret
std::allocator_traits<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::deallocate(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >&, std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rdx, QWORD PTR [rbp-24]
  mov rcx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::deallocate(std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long)
  nop
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_rehash(unsigned long, unsigned long const&):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 56
  mov QWORD PTR [rbp-40], rdi
  mov QWORD PTR [rbp-48], rsi
  mov QWORD PTR [rbp-56], rdx
  mov rdx, QWORD PTR [rbp-48]
  mov rax, QWORD PTR [rbp-40]
  sub rsp, 8
  push rcx
  mov rsi, rdx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_rehash_aux(unsigned long, std::integral_constant<bool, true>)
  add rsp, 16
  jmp .L172
  mov rdi, rax
  call __cxa_begin_catch
  mov rax, QWORD PTR [rbp-40]
  lea rdx, [rax+32]
  mov rax, QWORD PTR [rbp-56]
  mov rax, QWORD PTR [rax]
  mov rsi, rax
  mov rdi, rdx
  call std::__detail::_Prime_rehash_policy::_M_reset(unsigned long)
  call __cxa_rethrow
  mov rbx, rax
  call __cxa_end_catch
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L172:
  mov rbx, QWORD PTR [rbp-8]
  leave
  ret

std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_extract():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true>::_S_get(std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true>&)
  leave
  ret
decltype ((get<0>)((forward<std::pair<int const, int>&>)({parm#1}))) std::__detail::_Select1st::operator()<std::pair<int const, int>&>(std::pair<int const, int>&) const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call std::pair<int const, int>& std::forward<std::pair<int const, int>&>(std::remove_reference<std::pair<int const, int>&>::type&)
  mov rdi, rax
  call std::tuple_element<0ul, std::pair<int const, int> >::type& std::get<0ul, int const, int>(std::pair<int const, int>&)
  leave
  ret
std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_store_code(std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long) const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  nop
  pop rbp
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_bucket_begin(unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 40
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov QWORD PTR [rbp-40], rdx
  mov rax, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rbp-32]
  sal rdx, 3
  add rax, rdx
  mov rax, QWORD PTR [rax]
  test rax, rax
  je .L179
  mov rax, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rbp-32]
  sal rdx, 3
  add rax, rdx
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rax]
  mov rax, QWORD PTR [rbp-40]
  mov QWORD PTR [rax], rdx
  mov rax, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rbp-32]
  sal rdx, 3
  add rax, rdx
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rbp-40]
  mov QWORD PTR [rax], rdx
  jmp .L182
.L179:
  mov rax, QWORD PTR [rbp-24]
  mov rdx, QWORD PTR [rax+16]
  mov rax, QWORD PTR [rbp-40]
  mov QWORD PTR [rax], rdx
  mov rax, QWORD PTR [rbp-24]
  mov rdx, QWORD PTR [rbp-40]
  mov QWORD PTR [rax+16], rdx
  mov rax, QWORD PTR [rbp-40]
  mov rax, QWORD PTR [rax]
  test rax, rax
  je .L181
  mov rax, QWORD PTR [rbp-24]
  mov rbx, QWORD PTR [rax]
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>::_M_next() const
  mov rdx, rax
  mov rax, QWORD PTR [rbp-24]
  mov rsi, rdx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_bucket_index(std::__detail::_Hash_node<std::pair<int const, int>, false>*) const
  sal rax, 3
  lea rdx, [rbx+rax]
  mov rax, QWORD PTR [rbp-40]
  mov QWORD PTR [rdx], rax
.L181:
  mov rax, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rbp-32]
  sal rdx, 3
  add rax, rdx
  mov rdx, QWORD PTR [rbp-24]
  add rdx, 16
  mov QWORD PTR [rax], rdx
.L182:
  nop
  add rsp, 40
  pop rbx
  pop rbp
  ret
std::__detail::_Node_iterator<std::pair<int const, int>, false, false>::_Node_iterator(std::__detail::_Hash_node<std::pair<int const, int>, false>*):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Node_iterator_base<std::pair<int const, int>, false>::_Node_iterator_base(std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  nop
  leave
  ret
std::_Tuple_impl<0ul, int const&>::_Tuple_impl(int const&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, rdx
  mov rdi, rax
  call std::_Head_base<0ul, int const&, false>::_Head_base(int const&)
  nop
  leave
  ret
std::tuple<int const&>&& std::forward<std::tuple<int const&> >(std::remove_reference<std::tuple<int const&> >::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
void std::allocator_traits<std::allocator<std::pair<int const, int> > >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<> >(std::allocator<std::pair<int const, int> >&, std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&):
  push rbp
  mov rbp, rsp
  push r12
  push rbx
  sub rsp, 48
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov QWORD PTR [rbp-40], rdx
  mov QWORD PTR [rbp-48], rcx
  mov QWORD PTR [rbp-56], r8
  mov rax, QWORD PTR [rbp-56]
  mov rdi, rax
  call std::tuple<>&& std::forward<std::tuple<> >(std::remove_reference<std::tuple<> >::type&)
  mov r12, rax
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::tuple<int const&>&& std::forward<std::tuple<int const&> >(std::remove_reference<std::tuple<int const&> >::type&)
  mov rbx, rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::piecewise_construct_t const& std::forward<std::piecewise_construct_t const&>(std::remove_reference<std::piecewise_construct_t const&>::type&)
  mov rdx, rax
  mov rsi, QWORD PTR [rbp-32]
  mov rax, QWORD PTR [rbp-24]
  mov r8, r12
  mov rcx, rbx
  mov rdi, rax
  call void __gnu_cxx::new_allocator<std::pair<int const, int> >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<> >(std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&)
  nop
  add rsp, 48
  pop rbx
  pop r12
  pop rbp
  ret
std::pointer_traits<std::__detail::_Hash_node<std::pair<int const, int>, false>*>::pointer_to(std::__detail::_Hash_node<std::pair<int const, int>, false>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>* std::addressof<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::__detail::_Hash_node<std::pair<int const, int>, false>&)
  leave
  ret
void std::allocator_traits<std::allocator<std::pair<int const, int> > >::destroy<std::pair<int const, int> >(std::allocator<std::pair<int const, int> >&, std::pair<int const, int>*):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rdx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call void __gnu_cxx::new_allocator<std::pair<int const, int> >::destroy<std::pair<int const, int> >(std::pair<int const, int>*)
  nop
  leave
  ret
std::pointer_traits<std::__detail::_Hash_node_base**>::pointer_to(std::__detail::_Hash_node_base*&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node_base** std::addressof<std::__detail::_Hash_node_base*>(std::__detail::_Hash_node_base*&)
  leave
  ret
std::allocator<std::__detail::_Hash_node_base*>::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > const&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::new_allocator()
  nop
  leave
  ret
std::allocator<std::__detail::_Hash_node_base*>::~allocator():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::~new_allocator()
  nop
  leave
  ret
std::allocator_traits<std::allocator<std::__detail::_Hash_node_base*> >::deallocate(std::allocator<std::__detail::_Hash_node_base*>&, std::__detail::_Hash_node_base**, unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rdx, QWORD PTR [rbp-24]
  mov rcx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::deallocate(std::__detail::_Hash_node_base**, unsigned long)
  nop
  leave
  ret
std::__detail::_Hashtable_ebo_helper<1, std::hash<int>, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<1, std::hash<int>, true> const&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_h2() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<2, std::__detail::_Mod_range_hashing, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<2, std::__detail::_Mod_range_hashing, true> const&)
  leave
  ret
std::__detail::_Hashtable_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<false, false, true> >::_M_equals(int const&, unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*) const:
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 40
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov QWORD PTR [rbp-40], rdx
  mov QWORD PTR [rbp-48], rcx
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_extract() const
  mov rbx, rax
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call std::__detail::_Hashtable_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<false, false, true> >::_M_eq() const
  mov rdi, rax
  mov rcx, QWORD PTR [rbp-48]
  mov rdx, QWORD PTR [rbp-40]
  mov rax, QWORD PTR [rbp-32]
  mov r8, rcx
  mov rcx, rdx
  mov rdx, rax
  mov rsi, rbx
  call std::__detail::_Equal_helper<int, std::pair<int const, int>, std::__detail::_Select1st, std::equal_to<int>, unsigned long, false>::_S_equals(std::equal_to<int> const&, std::__detail::_Select1st const&, int const&, unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*)
  add rsp, 40
  pop rbx
  pop rbp
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_bucket_index(std::__detail::_Hash_node<std::pair<int const, int>, false>*) const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rax+8]
  mov rcx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_bucket_index(std::__detail::_Hash_node<std::pair<int const, int>, false> const*, unsigned long) const
  leave
  ret
std::_Tuple_impl<0ul, int&&>::_Tuple_impl<int>(int&&):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 24
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov rbx, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-32]
  mov rdi, rax
  call int&& std::forward<int>(std::remove_reference<int>::type&)
  mov rsi, rax
  mov rdi, rbx
  call std::_Head_base<0ul, int&&, false>::_Head_base<int>(int&&)
  nop
  add rsp, 24
  pop rbx
  pop rbp
  ret
std::_Tuple_impl<0ul, int&&>::_M_head(std::_Tuple_impl<0ul, int&&>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Head_base<0ul, int&&, false>::_M_head(std::_Head_base<0ul, int&&, false>&)
  leave
  ret
int&& std::forward<int&&>(std::remove_reference<int&&>::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::_Head_base<0ul, int&&, false>::_Head_base<int>(int&&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call int&& std::forward<int>(std::remove_reference<int>::type&)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax], rdx
  nop
  leave
  ret
std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>::_S_get(std::__detail::_Hashtable_ebo_helper<0, std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >, true>&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::allocate(unsigned long, void const*):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::max_size() const
  cmp QWORD PTR [rbp-16], rax
  seta al
  test al, al
  je .L213
  call std::__throw_bad_alloc()
.L213:
  mov rax, QWORD PTR [rbp-16]
  sal rax, 4
  mov rdi, rax
  call operator new(unsigned long)
  leave
  ret
__gnu_cxx::new_allocator<std::pair<int const, int> >::new_allocator():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  nop
  pop rbp
  ret
__gnu_cxx::new_allocator<std::pair<int const, int> >::~new_allocator():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  nop
  pop rbp
  ret
__gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_ptr():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_addr()
  leave
  ret
void __gnu_cxx::new_allocator<std::pair<int const, int> >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int&&>, std::tuple<> >(std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int&&>&&, std::tuple<>&&):
  push rbp
  mov rbp, rsp
  push r13
  push r12
  push rbx
  sub rsp, 88
  mov QWORD PTR [rbp-72], rdi
  mov QWORD PTR [rbp-80], rsi
  mov QWORD PTR [rbp-88], rdx
  mov QWORD PTR [rbp-96], rcx
  mov QWORD PTR [rbp-104], r8
  mov rax, QWORD PTR [rbp-88]
  mov rdi, rax
  call std::piecewise_construct_t const& std::forward<std::piecewise_construct_t const&>(std::remove_reference<std::piecewise_construct_t const&>::type&)
  mov rax, QWORD PTR [rbp-96]
  mov rdi, rax
  call std::tuple<int&&>&& std::forward<std::tuple<int&&> >(std::remove_reference<std::tuple<int&&> >::type&)
  mov rdx, rax
  lea rax, [rbp-48]
  mov rsi, rdx
  mov rdi, rax
  call std::tuple<int&&>::tuple(std::tuple<int&&>&&)
  lea r13, [rbp-48]
  mov rax, QWORD PTR [rbp-104]
  mov rdi, rax
  call std::tuple<>&& std::forward<std::tuple<> >(std::remove_reference<std::tuple<> >::type&)
  mov r12, QWORD PTR [rbp-80]
  mov rsi, r12
  mov edi, 8
  call operator new(unsigned long, void*)
  mov rbx, rax
  test rbx, rbx
  je .L224
  movzx eax, BYTE PTR [rbp-33]
  push rax
  movzx eax, BYTE PTR [rbp-49]
  push rax
  mov rsi, r13
  mov rdi, rbx
  call std::pair<int const, int>::pair<int&&>(std::piecewise_construct_t, std::tuple<int&&>, std::tuple<>)
  add rsp, 16
  jmp .L224
  mov r13, rax
  mov rsi, r12
  mov rdi, rbx
  call operator delete(void*, void*)
  mov rax, r13
  mov rdi, rax
  call _Unwind_Resume
.L224:
  nop
  lea rsp, [rbp-24]
  pop rbx
  pop r12
  pop r13
  pop rbp
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::deallocate(std::__detail::_Hash_node<std::pair<int const, int>, false>*, unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call operator delete(void*)
  nop
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_rehash_aux(unsigned long, std::integral_constant<bool, true>):
  push rbp
  mov rbp, rsp
  sub rsp, 64
  mov QWORD PTR [rbp-56], rdi
  mov QWORD PTR [rbp-64], rsi
  mov rdx, QWORD PTR [rbp-64]
  mov rax, QWORD PTR [rbp-56]
  mov rsi, rdx
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_allocate_buckets(unsigned long)
  mov QWORD PTR [rbp-24], rax
  mov rax, QWORD PTR [rbp-56]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_begin() const
  mov QWORD PTR [rbp-8], rax
  mov rax, QWORD PTR [rbp-56]
  mov QWORD PTR [rax+16], 0
  mov QWORD PTR [rbp-16], 0
.L231:
  cmp QWORD PTR [rbp-8], 0
  je .L227
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>::_M_next() const
  mov QWORD PTR [rbp-32], rax
  mov rdx, QWORD PTR [rbp-64]
  mov rcx, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rbp-56]
  mov rsi, rcx
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_bucket_index(std::__detail::_Hash_node<std::pair<int const, int>, false> const*, unsigned long) const
  mov QWORD PTR [rbp-40], rax
  mov rax, QWORD PTR [rbp-40]
  lea rdx, [0+rax*8]
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  mov rax, QWORD PTR [rax]
  test rax, rax
  jne .L228
  mov rax, QWORD PTR [rbp-56]
  mov rdx, QWORD PTR [rax+16]
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax], rdx
  mov rax, QWORD PTR [rbp-56]
  mov rdx, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+16], rdx
  mov rax, QWORD PTR [rbp-40]
  lea rdx, [0+rax*8]
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  mov rdx, QWORD PTR [rbp-56]
  add rdx, 16
  mov QWORD PTR [rax], rdx
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  test rax, rax
  je .L229
  mov rax, QWORD PTR [rbp-16]
  lea rdx, [0+rax*8]
  mov rax, QWORD PTR [rbp-24]
  add rdx, rax
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rdx], rax
.L229:
  mov rax, QWORD PTR [rbp-40]
  mov QWORD PTR [rbp-16], rax
  jmp .L230
.L228:
  mov rax, QWORD PTR [rbp-40]
  lea rdx, [0+rax*8]
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rax]
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax], rdx
  mov rax, QWORD PTR [rbp-40]
  lea rdx, [0+rax*8]
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  mov rax, QWORD PTR [rax]
  mov rdx, QWORD PTR [rbp-8]
  mov QWORD PTR [rax], rdx
.L230:
  mov rax, QWORD PTR [rbp-32]
  mov QWORD PTR [rbp-8], rax
  jmp .L231
.L227:
  mov rax, QWORD PTR [rbp-56]
  mov rdi, rax
  call std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_deallocate_buckets()
  mov rax, QWORD PTR [rbp-56]
  mov rdx, QWORD PTR [rbp-64]
  mov QWORD PTR [rax+8], rdx
  mov rax, QWORD PTR [rbp-56]
  mov rdx, QWORD PTR [rbp-24]
  mov QWORD PTR [rax], rdx
  nop
  leave
  ret
std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true>::_S_get(std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true>&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::pair<int const, int>& std::forward<std::pair<int const, int>&>(std::remove_reference<std::pair<int const, int>&>::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::tuple_element<0ul, std::pair<int const, int> >::type& std::get<0ul, int const, int>(std::pair<int const, int>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call int const& std::__pair_get<0ul>::__get<int const, int>(std::pair<int const, int>&)
  leave
  ret
std::__detail::_Node_iterator_base<std::pair<int const, int>, false>::_Node_iterator_base(std::__detail::_Hash_node<std::pair<int const, int>, false>*):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov QWORD PTR [rax], rdx
  nop
  pop rbp
  ret
std::_Head_base<0ul, int const&, false>::_Head_base(int const&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov QWORD PTR [rax], rdx
  nop
  pop rbp
  ret
std::tuple<int const&>::tuple(std::tuple<int const&>&&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-8]
  mov rdx, QWORD PTR [rbp-16]
  mov rsi, rdx
  mov rdi, rax
  call std::_Tuple_impl<0ul, int const&>::_Tuple_impl(std::_Tuple_impl<0ul, int const&>&&)
  nop
  leave
  ret
void __gnu_cxx::new_allocator<std::pair<int const, int> >::construct<std::pair<int const, int>, std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<> >(std::pair<int const, int>*, std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&):
  push rbp
  mov rbp, rsp
  push r13
  push r12
  push rbx
  sub rsp, 88
  mov QWORD PTR [rbp-72], rdi
  mov QWORD PTR [rbp-80], rsi
  mov QWORD PTR [rbp-88], rdx
  mov QWORD PTR [rbp-96], rcx
  mov QWORD PTR [rbp-104], r8
  mov rax, QWORD PTR [rbp-88]
  mov rdi, rax
  call std::piecewise_construct_t const& std::forward<std::piecewise_construct_t const&>(std::remove_reference<std::piecewise_construct_t const&>::type&)
  mov rax, QWORD PTR [rbp-96]
  mov rdi, rax
  call std::tuple<int const&>&& std::forward<std::tuple<int const&> >(std::remove_reference<std::tuple<int const&> >::type&)
  mov rdx, rax
  lea rax, [rbp-48]
  mov rsi, rdx
  mov rdi, rax
  call std::tuple<int const&>::tuple(std::tuple<int const&>&&)
  lea r13, [rbp-48]
  mov rax, QWORD PTR [rbp-104]
  mov rdi, rax
  call std::tuple<>&& std::forward<std::tuple<> >(std::remove_reference<std::tuple<> >::type&)
  mov r12, QWORD PTR [rbp-80]
  mov rsi, r12
  mov edi, 8
  call operator new(unsigned long, void*)
  mov rbx, rax
  test rbx, rbx
  je .L246
  movzx eax, BYTE PTR [rbp-33]
  push rax
  movzx eax, BYTE PTR [rbp-49]
  push rax
  mov rsi, r13
  mov rdi, rbx
  call std::pair<int const, int>::pair<int const&>(std::piecewise_construct_t, std::tuple<int const&>, std::tuple<>)
  add rsp, 16
  jmp .L246
  mov r13, rax
  mov rsi, r12
  mov rdi, rbx
  call operator delete(void*, void*)
  mov rax, r13
  mov rdi, rax
  call _Unwind_Resume
.L246:
  nop
  lea rsp, [rbp-24]
  pop rbx
  pop r12
  pop r13
  pop rbp
  ret
std::__detail::_Hash_node<std::pair<int const, int>, false>* std::addressof<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::__detail::_Hash_node<std::pair<int const, int>, false>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node<std::pair<int const, int>, false>* std::__addressof<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::__detail::_Hash_node<std::pair<int const, int>, false>&)
  leave
  ret
void __gnu_cxx::new_allocator<std::pair<int const, int> >::destroy<std::pair<int const, int> >(std::pair<int const, int>*):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  nop
  pop rbp
  ret
std::__detail::_Hash_node_base** std::addressof<std::__detail::_Hash_node_base*>(std::__detail::_Hash_node_base*&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node_base** std::__addressof<std::__detail::_Hash_node_base*>(std::__detail::_Hash_node_base*&)
  leave
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::new_allocator():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  nop
  pop rbp
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::~new_allocator():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  nop
  pop rbp
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::deallocate(std::__detail::_Hash_node_base**, unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call operator delete(void*)
  nop
  leave
  ret
std::__detail::_Hashtable_ebo_helper<2, std::__detail::_Mod_range_hashing, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<2, std::__detail::_Mod_range_hashing, true> const&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::__detail::_Equal_helper<int, std::pair<int const, int>, std::__detail::_Select1st, std::equal_to<int>, unsigned long, false>::_S_equals(std::equal_to<int> const&, std::__detail::_Select1st const&, int const&, unsigned long, std::__detail::_Hash_node<std::pair<int const, int>, false>*):
  push rbp
  mov rbp, rsp
  sub rsp, 48
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov QWORD PTR [rbp-32], rcx
  mov QWORD PTR [rbp-40], r8
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_v()
  mov rdx, rax
  mov rax, QWORD PTR [rbp-16]
  mov rsi, rdx
  mov rdi, rax
  call decltype ((get<0>)((forward<std::pair<int const, int>&>)({parm#1}))) std::__detail::_Select1st::operator()<std::pair<int const, int>&>(std::pair<int const, int>&) const
  mov rdx, rax
  mov rcx, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rcx
  mov rdi, rax
  call std::equal_to<int>::operator()(int const&, int const&) const
  leave
  ret
std::__detail::_Hashtable_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Hashtable_traits<false, false, true> >::_M_eq() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<0, std::equal_to<int>, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<0, std::equal_to<int>, true> const&)
  leave
  ret
std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_extract() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true> const&)
  leave
  ret
std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_bucket_index(std::__detail::_Hash_node<std::pair<int const, int>, false> const*, unsigned long) const:
  push rbp
  mov rbp, rsp
  push r13
  push r12
  push rbx
  sub rsp, 40
  mov QWORD PTR [rbp-40], rdi
  mov QWORD PTR [rbp-48], rsi
  mov QWORD PTR [rbp-56], rdx
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_h2() const
  mov rbx, rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_h1() const
  mov r12, rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__detail::_Hash_code_base<int, std::pair<int const, int>, std::__detail::_Select1st, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, false>::_M_extract() const
  mov r13, rax
  mov rax, QWORD PTR [rbp-48]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_v() const
  mov rsi, rax
  mov rdi, r13
  call decltype ((get<0>)((forward<std::pair<int const, int> const&>)({parm#1}))) std::__detail::_Select1st::operator()<std::pair<int const, int> const&>(std::pair<int const, int> const&) const
  mov eax, DWORD PTR [rax]
  mov esi, eax
  mov rdi, r12
  call std::hash<int>::operator()(int) const
  mov rcx, rax
  mov rax, QWORD PTR [rbp-56]
  mov rdx, rax
  mov rsi, rcx
  mov rdi, rbx
  call std::__detail::_Mod_range_hashing::operator()(unsigned long, unsigned long) const
  add rsp, 40
  pop rbx
  pop r12
  pop r13
  pop rbp
  ret
std::_Head_base<0ul, int&&, false>::_M_head(std::_Head_base<0ul, int&&, false>&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  pop rbp
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >::max_size() const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  movabs rax, 1152921504606846975
  pop rbp
  ret
__gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_addr():
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::pair<int const, int>::pair<int&&>(std::piecewise_construct_t, std::tuple<int&&>, std::tuple<>):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  lea rdx, [rbp+24]
  mov rcx, QWORD PTR [rbp-32]
  mov rax, QWORD PTR [rbp-24]
  push r9
  push r8
  mov rsi, rcx
  mov rdi, rax
  call std::pair<int const, int>::pair<int&&, 0ul>(std::tuple<int&&>&, std::tuple<>&, std::_Index_tuple<0ul>, std::_Index_tuple<>)
  add rsp, 16
  nop
  leave
  ret
std::_Hashtable<int, std::pair<int const, int>, std::allocator<std::pair<int const, int> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_allocate_buckets(unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  cmp QWORD PTR [rbp-16], 1
  sete al
  movzx eax, al
  test rax, rax
  je .L273
  mov rax, QWORD PTR [rbp-8]
  mov QWORD PTR [rax+48], 0
  mov rax, QWORD PTR [rbp-8]
  add rax, 48
  jmp .L274
.L273:
  mov rdx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rdx
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_allocate_buckets(unsigned long)
.L274:
  leave
  ret
int const& std::__pair_get<0ul>::__get<int const, int>(std::pair<int const, int>&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::_Tuple_impl<0ul, int const&>::_Tuple_impl(std::_Tuple_impl<0ul, int const&>&&):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 24
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov rbx, QWORD PTR [rbp-24]
  mov rax, QWORD PTR [rbp-32]
  mov rdi, rax
  call std::_Tuple_impl<0ul, int const&>::_M_head(std::_Tuple_impl<0ul, int const&>&)
  mov rdi, rax
  call int const& std::forward<int const&>(std::remove_reference<int const&>::type&)
  mov rsi, rax
  mov rdi, rbx
  call std::_Head_base<0ul, int const&, false>::_Head_base(int const&)
  nop
  add rsp, 24
  pop rbx
  pop rbp
  ret
std::pair<int const, int>::pair<int const&>(std::piecewise_construct_t, std::tuple<int const&>, std::tuple<>):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  lea rdx, [rbp+24]
  mov rcx, QWORD PTR [rbp-32]
  mov rax, QWORD PTR [rbp-24]
  push r9
  push r8
  mov rsi, rcx
  mov rdi, rax
  call std::pair<int const, int>::pair<int const&, 0ul>(std::tuple<int const&>&, std::tuple<>&, std::_Index_tuple<0ul>, std::_Index_tuple<>)
  add rsp, 16
  nop
  leave
  ret
std::__detail::_Hash_node_base** std::__addressof<std::__detail::_Hash_node_base*>(std::__detail::_Hash_node_base*&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::equal_to<int>::operator()(int const&, int const&) const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-16]
  mov edx, DWORD PTR [rax]
  mov rax, QWORD PTR [rbp-24]
  mov eax, DWORD PTR [rax]
  cmp edx, eax
  sete al
  pop rbp
  ret
std::__detail::_Hashtable_ebo_helper<0, std::equal_to<int>, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<0, std::equal_to<int>, true> const&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true>::_S_cget(std::__detail::_Hashtable_ebo_helper<0, std::__detail::_Select1st, true> const&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_v() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr() const
  leave
  ret
decltype ((get<0>)((forward<std::pair<int const, int> const&>)({parm#1}))) std::__detail::_Select1st::operator()<std::pair<int const, int> const&>(std::pair<int const, int> const&) const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call std::pair<int const, int> const& std::forward<std::pair<int const, int> const&>(std::remove_reference<std::pair<int const, int> const&>::type&)
  mov rdi, rax
  call std::tuple_element<0ul, std::pair<int const, int> >::type const& std::get<0ul, int const, int>(std::pair<int const, int> const&)
  leave
  ret
std::pair<int const, int>::pair<int&&, 0ul>(std::tuple<int&&>&, std::tuple<>&, std::_Index_tuple<0ul>, std::_Index_tuple<>):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call std::tuple_element<0ul, std::tuple<int&&> >::type& std::get<0ul, int&&>(std::tuple<int&&>&)
  mov rdi, rax
  call int&& std::forward<int&&>(std::remove_reference<int&&>::type&)
  mov edx, DWORD PTR [rax]
  mov rax, QWORD PTR [rbp-8]
  mov DWORD PTR [rax], edx
  mov rax, QWORD PTR [rbp-8]
  mov DWORD PTR [rax+4], 0
  nop
  leave
  ret
std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_allocate_buckets(unsigned long):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 56
  mov QWORD PTR [rbp-56], rdi
  mov QWORD PTR [rbp-64], rsi
  mov rax, QWORD PTR [rbp-56]
  mov rdi, rax
  call std::__detail::_Hashtable_alloc<std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > >::_M_node_allocator()
  mov rdx, rax
  lea rax, [rbp-33]
  mov rsi, rdx
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node_base*>::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> >(std::allocator<std::__detail::_Hash_node<std::pair<int const, int>, false> > const&)
  mov rdx, QWORD PTR [rbp-64]
  lea rax, [rbp-33]
  mov rsi, rdx
  mov rdi, rax
  call std::allocator_traits<std::allocator<std::__detail::_Hash_node_base*> >::allocate(std::allocator<std::__detail::_Hash_node_base*>&, unsigned long)
  mov QWORD PTR [rbp-24], rax
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call std::__detail::_Hash_node_base** std::__addressof<std::__detail::_Hash_node_base*>(std::__detail::_Hash_node_base*&)
  mov QWORD PTR [rbp-32], rax
  mov rax, QWORD PTR [rbp-64]
  lea rdx, [0+rax*8]
  mov rax, QWORD PTR [rbp-32]
  mov esi, 0
  mov rdi, rax
  call memset
  mov rbx, QWORD PTR [rbp-32]
  lea rax, [rbp-33]
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node_base*>::~allocator()
  mov rax, rbx
  jmp .L296
  mov rbx, rax
  lea rax, [rbp-33]
  mov rdi, rax
  call std::allocator<std::__detail::_Hash_node_base*>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L296:
  add rsp, 56
  pop rbx
  pop rbp
  ret
std::_Tuple_impl<0ul, int const&>::_M_head(std::_Tuple_impl<0ul, int const&>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Head_base<0ul, int const&, false>::_M_head(std::_Head_base<0ul, int const&, false>&)
  leave
  ret
int const& std::forward<int const&>(std::remove_reference<int const&>::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::pair<int const, int>::pair<int const&, 0ul>(std::tuple<int const&>&, std::tuple<>&, std::_Index_tuple<0ul>, std::_Index_tuple<>):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-16]
  mov rdi, rax
  call std::tuple_element<0ul, std::tuple<int const&> >::type& std::get<0ul, int const&>(std::tuple<int const&>&)
  mov rdi, rax
  call int const& std::forward<int const&>(std::remove_reference<int const&>::type&)
  mov edx, DWORD PTR [rax]
  mov rax, QWORD PTR [rbp-8]
  mov DWORD PTR [rax], edx
  mov rax, QWORD PTR [rbp-8]
  mov DWORD PTR [rax+4], 0
  nop
  leave
  ret
std::__detail::_Hash_node_value_base<std::pair<int const, int> >::_M_valptr() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  add rax, 8
  mov rdi, rax
  call __gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_ptr() const
  leave
  ret
std::pair<int const, int> const& std::forward<std::pair<int const, int> const&>(std::remove_reference<std::pair<int const, int> const&>::type&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
std::tuple_element<0ul, std::pair<int const, int> >::type const& std::get<0ul, int const, int>(std::pair<int const, int> const&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call int const& std::__pair_get<0ul>::__const_get<int const, int>(std::pair<int const, int> const&)
  leave
  ret
std::tuple_element<0ul, std::tuple<int&&> >::type& std::get<0ul, int&&>(std::tuple<int&&>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call int& std::__get_helper<0ul, int&&>(std::_Tuple_impl<0ul, int&&>&)
  leave
  ret
std::allocator_traits<std::allocator<std::__detail::_Hash_node_base*> >::allocate(std::allocator<std::__detail::_Hash_node_base*>&, unsigned long):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rcx, QWORD PTR [rbp-16]
  mov rax, QWORD PTR [rbp-8]
  mov edx, 0
  mov rsi, rcx
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::allocate(unsigned long, void const*)
  leave
  ret
std::_Head_base<0ul, int const&, false>::_M_head(std::_Head_base<0ul, int const&, false>&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rax, QWORD PTR [rax]
  pop rbp
  ret
std::tuple_element<0ul, std::tuple<int const&> >::type& std::get<0ul, int const&>(std::tuple<int const&>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call int const& std::__get_helper<0ul, int const&>(std::_Tuple_impl<0ul, int const&>&)
  leave
  ret
__gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_ptr() const:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_addr() const
  leave
  ret
int const& std::__pair_get<0ul>::__const_get<int const, int>(std::pair<int const, int> const&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
int& std::__get_helper<0ul, int&&>(std::_Tuple_impl<0ul, int&&>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Tuple_impl<0ul, int&&>::_M_head(std::_Tuple_impl<0ul, int&&>&)
  leave
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::allocate(unsigned long, void const*):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov QWORD PTR [rbp-24], rdx
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call __gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::max_size() const
  cmp QWORD PTR [rbp-16], rax
  seta al
  test al, al
  je .L323
  call std::__throw_bad_alloc()
.L323:
  mov rax, QWORD PTR [rbp-16]
  sal rax, 3
  mov rdi, rax
  call operator new(unsigned long)
  leave
  ret
int const& std::__get_helper<0ul, int const&>(std::_Tuple_impl<0ul, int const&>&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::_Tuple_impl<0ul, int const&>::_M_head(std::_Tuple_impl<0ul, int const&>&)
  leave
  ret
__gnu_cxx::__aligned_buffer<std::pair<int const, int> >::_M_addr() const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  pop rbp
  ret
__gnu_cxx::new_allocator<std::__detail::_Hash_node_base*>::max_size() const:
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  movabs rax, 2305843009213693951
  pop rbp
  ret
__static_initialization_and_destruction_0(int, int):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], edi
  mov DWORD PTR [rbp-8], esi
  cmp DWORD PTR [rbp-4], 1
  jne .L333
  cmp DWORD PTR [rbp-8], 65535
  jne .L333
  mov edi, OFFSET FLAT:std::__ioinit
  call std::ios_base::Init::Init()
  mov edx, OFFSET FLAT:__dso_handle
  mov esi, OFFSET FLAT:std::__ioinit
  mov edi, OFFSET FLAT:std::ios_base::Init::~Init()
  call __cxa_atexit
.L333:
  nop
  leave
  ret
_GLOBAL__sub_I__Z6powmodiii:
  push rbp
  mov rbp, rsp
  mov esi, 65535
  mov edi, 1
  call __static_initialization_and_destruction_0(int, int)
  pop rbp
  ret
.LC0:
  .long 1065353216