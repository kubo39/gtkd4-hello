import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Button;

int main(string[] args)
{
    auto application = new Application("org.gtk.example", GApplicationFlags.FLAGS_NONE);
    application.addOnActivate((GioApplication) {
            auto window = new ApplicationWindow(application);
            window.setTitle("My GTK App");

            auto button = new Button("Press me!");
            button.setMarginTop(12);
            button.setMarginBottom(12);
            button.setMarginStart(12);
            button.setMarginEnd(12);
            button.addOnClicked((Button button) {
                    button.setLabel("Hello World!");
                });
            window.setChild(button);
            window.show();
        });
    return application.run(args);
}
