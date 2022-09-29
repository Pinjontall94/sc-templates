(
Window.closeAll;
w = Window("Knob Grid", Rect(0, 0, 400, 400))
.front
.alwaysOnTop_(True);

w.view.decorator_(FlowLayout(w.bounds, 15@15, 7@7));
)

(
// Remove & Reset GUI elements
w.view.children.collect(_.remove);
w.view.decorator.reset;
)

k = Array.fill(64, {Knob(w,40@40)});
k[0].value_(rrand(0.0,1.0));