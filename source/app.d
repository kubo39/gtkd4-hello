import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Box;
import gtk.Button;

int main(string[] args)
{
    auto application = new Application("org.gtk.example", GApplicationFlags.FLAGS_NONE);
    application.addOnActivate((GioApplication _) {
            auto window = new ApplicationWindow(application);
            window.setTitle("Window");

            auto box = new Box(Orientation.HORIZONTAL, 0);
            window.setChild(box);

            auto button = new Button("Press me");
            button.setMarginTop(12);
            button.setMarginBottom(12);
            button.setMarginStart(12);
            button.setMarginEnd(12);
            button.addOnClicked((Button _) {
                    button.setLabel("Hello");
                });
            box.append(button);

            window.show();
        });
    return application.run(args);
}
