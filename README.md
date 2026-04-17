Unsuccessful reproduction of https://www.linuxfromscratch.org/lfs/view/systemd/chapter06/ncurses.html compilation failure on a GitHub ction runner, similar to https://lists.linuxfromscratch.org/sympa/arc/alfs-discuss/2026-03/msg00013.html

```
make mk_CHROOT
...
gcc -I../ncurses -DHAVE_CONFIG_H -DBUILDING_FORM -I. -I../include -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -DNDEBUG -O2 --param max-inline-insns-single=1200  -fPIC -c ../form/fty_num.c -o ../obj_s/fty_num.o
gcc -I../ncurses -DHAVE_CONFIG_H -DBUILDING_FORM -I. -I../include -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -DNDEBUG -O2 --param max-inline-insns-single=1200  -fPIC -c ../form/fty_regex.c -o ../obj_s/fty_regex.o
during GIMPLE pass: strlen
../form/fty_num.c: In function 'Check_This_Field':
../form/fty_num.c:183:1: internal compiler error: Illegal instruction
  183 | Check_This_Field(FIELD *field, const void *argp)
      | ^~~~~~~~~~~~~~~~
0x556f1e502691 internal_error(char const*, ...)
	../../gcc/diagnostic-global-context.cc:517
0x556f1d18fde3 crash_signal
	../../gcc/toplev.cc:322
0x7f6ca58f8a8f ???
	/sources/glibc-2.43/signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0
0x556f1e34afa1 get_mpfr_format_length
	../../gcc/gimple-ssa-sprintf.cc:1591
0x556f1e34b150 format_floating_max
	../../gcc/gimple-ssa-sprintf.cc:1633
0x556f1e34d7ed format_floating
	../../gcc/gimple-ssa-sprintf.cc:1759
0x556f1e34d7ed format_floating
	../../gcc/gimple-ssa-sprintf.cc:1909
0x556f1e35028a format_directive
	../../gcc/gimple-ssa-sprintf.cc:3129
0x556f1e35028a compute_format_length
	../../gcc/gimple-ssa-sprintf.cc:4077
0x556f1e35028a handle_printf_call(gimple_stmt_iterator*, pointer_query&)
	../../gcc/gimple-ssa-sprintf.cc:4748
0x556f1d3c225f strlen_pass::check_and_optimize_call(bool*)
	../../gcc/tree-ssa-strlen.cc:5533
0x556f1d3c2f3d strlen_pass::check_and_optimize_stmt(bool*)
	../../gcc/tree-ssa-strlen.cc:5737
0x556f1d3c32c1 strlen_pass::before_dom_children(basic_block_def*)
	../../gcc/tree-ssa-strlen.cc:5921
0x556f1e2a0d02 dom_walker::walk(basic_block_def*)
	../../gcc/domwalk.cc:311
0x556f1d3b4176 printf_strlen_execute
	../../gcc/tree-ssa-strlen.cc:5981
Please submit a full bug report, with preprocessed source (by using -freport-bug).
Please include the complete backtrace with any bug report.
See <https://gcc.gnu.org/bugs/> for instructions.
make[2]: *** [Makefile:620: ../obj_s/fty_num.o] Error 1
make[2]: *** Waiting for unfinished jobs....
make[2]: Leaving directory '/sources/ncurses-6.6/form'
make[1]: *** [Makefile:136: all] Error 2
make[1]: Leaving directory '/sources/ncurses-6.6'
...
```
