#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_arduino"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/emprise/wholearm_ws/wholearm_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/emprise/wholearm_ws/wholearm_ws/install/lib/python3/dist-packages:/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_arduino/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_arduino" \
    "/usr/bin/python3" \
    "/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_arduino/setup.py" \
     \
    build --build-base "/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_arduino" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/emprise/wholearm_ws/wholearm_ws/install" --install-scripts="/home/emprise/wholearm_ws/wholearm_ws/install/bin"
