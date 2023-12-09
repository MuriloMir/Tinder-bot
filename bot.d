// This software is a bot to hit the like button on the Tinder website.

import arsd.simpledisplay : Key, MouseButton, SyntheticInput;
import core.thread : Thread;
import core.time : seconds;

void main()
{
    // create the sender of inputs, to later send the clicks
    SyntheticInput sender = SyntheticInput(0);
    // this counter will keep track of how many times it has clicked
    int counter;

    // start an infinite loop
    while (true)
    {
        // sends a left mouse press and release
        sender.pressMouseButton(MouseButton.left, true), sender.pressMouseButton(MouseButton.left, false);
        // waits 2 seconds
        Thread.sleep(seconds(2));

        // if the counter is now 15 (increment the counter as well)
        if (counter++ >= 15)
        {
            // send the press and release of the F5 key
            sender.pressKey(Key.F5, true), sender.pressKey(Key.F5, false);
            // resets the counter, in order to start over
            counter = 0;
        }
    }
}
