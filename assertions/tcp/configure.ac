AC_INIT([test], [0.1])
AC_CONFIG_FILES([Makefile])
AC_CONFIG_SRCDIR([test.c])

dnl Decide if the -DTESLA_DTRACE will be passed to C preprocessor.
DTFLAGS=""

AC_ARG_ENABLE([dtrace],
  [  --enable-dtrace     enable built-in DTrace USDT probes],
  [dtrace_requested=${enableval}],
  [dtrace_requested="no"])

if test ${dtrace_requested} = "yes"; then
  echo "*************************************"
  echo "TESLA DTrace functionality requested."
  echo "*************************************"
  AC_CHECK_HEADERS(
    [sys/sdt.h], [dtrace_supported=yes],
    [dtrace_supported=no]
  )
  if test "${dtrace_supported}" = "yes"; then
    DTFLAGS="-DTESLA_DTRACE"
    dnl Provider header is generated along with libtesla.
    dtrace_enabled=yes
    echo "*********************"
    echo "TESLA DTrace engaged."
    echo "*********************"
  else
    AC_MSG_ERROR([DTrace is not supported.])
  fi
else
  dtrace_enabled=no
fi

AC_SUBST(DTFLAGS)

TESLA_DTRACE_OBJS=""
LD_LIBS=""

dnl AC_CANONICAL_HOST
OSNAME=`uname -s`
echo "Operating System:   ${OSNAME}"
case "$OSNAME" in
  FreeBSD*)
      dnl Add the provider object to TESLA_DTRACE_OBJS so it will get built.
      if test ${dtrace_enabled} = "yes"; then
        TESLA_DTRACE_OBJS="\$(PROVIDER_OBJ)"
        LD_LIBS="-lelf"
      fi
    ;;
  Darwin*)
      dnl No specific handling is needed here.
    ;;
esac

AC_SUBST(TESLA_DTRACE_OBJS)
AC_SUBST(LD_LIBS)

AC_OUTPUT
