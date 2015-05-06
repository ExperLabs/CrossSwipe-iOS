## Synopsis

This is an iOS UI Control that displays 4 UIView tiles on the screen. 

![alt tag](https://github.com/bateeq/CrossSwipe-iOS/blob/master/doc/plain.jpg)

Each tile can contain any view hierarchy. The control responds to 4 way swipe gestures. When the user swipes left to right, the two tiles on the right swipe off the screen and two tiles swipe on the screen from the left. Similarly tiles move off from and on to the screen when the user swipes right to left, top to bottom and bottom to top. Also, the tiles wrap around in both directions providing infinite four way swipe. 

## Code Example

CrossSwipeTiles/ViewController.* and CrossSwipeTiles/CrossSwipeControl/TileView.* illustrate the usage of this control. Essentially, subclass CrossSwipeViewController and customize TileView accordingly to change what appears in each tile. 

## Motivation

In most iOS apps, the user is forced to dig deep in a navigation of table view controllers and detail view controllers. This control allows the user to explore information (e.g. movie posters or family photos) without running down a table view. 

## Installation

Copy over the files under CrossSwipeTiles/CrossSwipeControl into your project. Create a subclass of CrossSwipeViewController. Customize TileView. 

## License

The MIT License (MIT)

Copyright (c) 2015 Burhan Ateeq

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.