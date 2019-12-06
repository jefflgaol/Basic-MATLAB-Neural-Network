# Basic-MATLAB-Neural-Network
This is a simple project to perform learning inside a neural network using MATLAB. Here, I provide you with input and target of learning set, and then we will implement backpropagation to update weights of the neural network.

## How To Use
1. Download all codes, open MATLAB, and change directory to download directory.
2. Open LearningProcess.m and click Run.

## Glimpse of Neural Network
A neural network is a set of nodes with a specific weight and bias value that will magically convert any input nodes into output nodes. For example, you have an image, which you can tell that it is a dog. But, it's hard for a computer to describe it since it only sees arrays of pixel. So, the neural network will convert these arrays into just a category. In this case, it can categorize it as a dog. But for now, let's stay with the basic one. You can open the file LearningProcess.m through MATLAB. You can see that we have two matrices: input matrix po and target matrix to. Here, we will train the neural network to convert the input matrix into the target matrix.

### Normalization
Before you train a neural network, you will need to perform normalization. In theory, the normalization will make the training process easier. Check normf.m. For another dataset (a collection of training data alias input matrix), we may perform differently. For example, we can convert images to grayscale, mean-subtraction, and so many more.

### Weight and Bias Initialization
As I mentioned, the neural network consists of nodes with weight and bias. Before perform training, we need to initialize these values. For this example, we will use a random generator. Check randgen.m. There are many ways to initialize these values. The most popular is using Gaussian distribution. Or maybe, you can copy another weight and bias values from another already-trained neural network. This will be called transfer learning.

### Loss Function
The most important part is learning, or training is the most common word to describe it. To perform training, we need to measure how bad is our weights. To do this, we will use a loss function. It measures the difference between input and target. In real-world cases, you might find a lot of loss function. For example, L1 distance, L2 distance, cross-entropy loss, SVM loss, etc. For now, we will stay with the basic one, the sum-squared-error.

### Forward and Backward Propagation
Forward propagation is a flow of our input through weights and bias into certain output. Check fpnet.m. In the example, we have two forward propagation, a1 and a2. a1 will use log sigmoid activation function and a2 will use linear activation function. So, the neural network will consist of two hidden-layer, a1 and a2. Backward propagation is the reversed-flow from the output to the input. Using the sensitivity measurement, we can update weights and biases iteratively. Check sout.m and slayer.m.