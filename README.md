# My first GTK4 app

1. install GTK4.

```console
# https://discourse.gnome.org/t/installing-gtk4-for-testing-on-opt-ii/3349/4
$ git clone https://gitlab.gnome.org/GNOME/gtk.git
$ cd gtk
$ meson --prefix /opt/gtk builddir
$ ninja -C builddir
$ ninja -C builddir install
```

2. export GTK4 and run.

```console
$ export LD_LIBRARY_PATH=/opt/gtk/lib/$(dpkg-architecture -qDEB_HOST_MULTIARCH):$LD_LIBRARY_PATH
$ dub run
```
