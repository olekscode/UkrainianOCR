# A Database of Printed Ukrainian Letters for Character Recognition
<img align="right" width="300" src="https://github.com/un-olk/UkrainianOCR/blob/master/img/sample.png">

This is a dataset of printed Ukrainian charcters, similar to the [MNIST database](http://yann.lecun.com/exdb/mnist/).
This repository also includes the script for data generation and an example of a deep convolutional neural network 
that learns to recognize characters from this dataset.

Number of classes: **66**</br>
Number of images: **9966**

## CSV File Structure
Each row of a CSV file represents one training example:
* **Label** - the first number of each row in range 0-65
* **Image** - the following 784 numbers in range 0-255 - for an 8-bit greyscale 28x28 image
