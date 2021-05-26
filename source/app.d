import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Button;

class MyButton : Button
{
    this(string label)
    {
        super(label);
        this.setMarginTop(12);
        this.setMarginBottom(12);
        this.setMarginStart(12);
        this.setMarginEnd(12);
    }
}

class MyWindow : ApplicationWindow
{
    this(Application application)
    {
        super(application);
        this.setTitle("My GTK App");
    }
}

int main(string[] args)
{
    auto application = new Application("org.gtk.example", GApplicationFlags.FLAGS_NONE);
    application.addOnActivate((GioApplication) {
            auto window = new MyWindow(application);
            auto button = new MyButton("Press me!");
            button.addOnClicked((Button button) {
                    button.setLabel("Hello World!");
                });
            window.setChild(button);
            window.show();
        });
    return application.run(args);
}
