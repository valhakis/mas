/* XLIB */

Display *display = XOpenDisplay(NULL);
/* ERROR RETURNS: NULL */

int screen = DefaultScreen(display);

Window window = XCreateSimpleWindow(display, RootWindow(display, screen), 10, 10, 200, 200, 1, BlackPixel(display, screen), WhitePixel(display, screen));
