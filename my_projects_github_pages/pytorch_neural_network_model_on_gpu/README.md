# **Exploration on Behaviour of Neural Network Model using PyTorch on Graphics Processing Unit**
<br>

## <u>**Context**</u>
<br>

When I was doing my Data Science Immersive course with General Assembly, we were taught to do Neural Network (NN) models using the TensorFlow library. I wanted to learn to use another library. So I picked PyTorch next.
<br>
<br>

In the course, we did the NN models on the Central Processing Unit (CPU). Since I have a laptop with a Nvidia Graphics Processing Unit (GPU), I decided to learn to do it on the GPU.
<br>
<br>

I am also interested to know if the GPU can train a NN model faster than the CPU.
<br>
<br>

Hence the focus of this work is on how to do NN model using PyTorch on the GPU and how it behaves on the GPU compared to the CPU.
<br>
<br>

## <u>**Installation of PyTorch**</u>
<br>

PyTorch can be installed from this Nvidia's website >>> https://pytorch.org/get-started/locally/
<br>
<br>

Select the appropriate options for you.
For me, I have selected these options:
<img src='pytorch_installation.png'>
<br>
<br>

In the box "Run this Command",
* Copy the command string.
* Open the Anaconda prompt.
* Paste the command string.
* Press ENTER to install PyTorch.
<br>

Things to note:
* From this Nvidia's website >>> https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#install-windows, you will be taught to install (a) Nvidia graphic driver, (b) CUDA Toolkit, and (c) cuDNN.
* From this PyTorch's forum >>> https://discuss.pytorch.org/t/how-to-install-cudnn-for-pytorch-2-1-0-with-cuda-12-1/179864, you will learn that (b) and (c) will be installed together with PyTorch in the steps above. Hence you do not need to follow the instructions from the Nvidia's website to install them.
* However, (a) must be installed first. You can refer to this Nvidia's website >>> https://nvidia.custhelp.com/app/answers/detail/a_id/5021/kw/check%20graphic%20driver%20installation. This step may not be necessary as it should have been done on the laptop you purchased.
<br>

## <u>**Check Installation of PyTorch**</u>
<br>

You can use these Python codes to check that PyTorch has been installed correctly:
<img src='check_gpu.PNG'>
<br>
<br>

The Python codes above are also given in ***check_gpu.ipynb***.
<br>
<br>

## <u>**The Basics**</u>
<br>

You should go through the following tutorials from this Nvidia's website >>> https://pytorch.org/tutorials/beginner/basics/intro.html:
* Quickstart.
* Tensors.
* Datasets and DataLoaders.
* Build Model.
<br>
<br>

## <u>**Tensor**</u>
<br>

You can now open ***dataframe_tensor.ipynb*** to learn how to convert a dataframe to a tensor.

<img src='dataframe_tensor1.PNG'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src='dataframe_tensor2.PNG'>
<br>
<br>

## <u>**Pushing Tensor and Model to GPU**</u>
<br>

You can push the tensor and NN model to the GPU for training as follows:

[<img src='push_to_gpu1.PNG' height="100"/>] &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; []<img src='push_to_gpu2.PNG' height="100"/>]
<br>
<br>

## <u>**GPU Versus CPU**</u>
<br>

Question: Will the training of a NN model on the GPU be faster than on the CPU?
<br>
<br>

The computational load placed on the CPU or GPU can be affected by the followings:
* Size of tensor.
* Number of nodes (tensor operations).
* Number of hidden layers (tensor operations).
* Size of Random Access Memory (RAM) of CPU (32 Gb in my case) and GPU (6 Gb in my case).
<br>
<br>

For the comparative study, the followings were done as experimental controls:
* Random seeds for random numbers and PyTorch algorithms were fixed.
* Epoch count and batch size were fixed.
* Learning rate, optimizer (method to minimise error amount), and loss function (function to calculate the error amount) were fixed.
* Power supply to laptop was switched on.
* Before every run of the Python codes in the jupyter notebook, the kernel was re-started and the outputs were cleared.
* While running the Python codes, no other programmes were accessed.
<br>
<br>

Answer: Here are the answers to the question above:
<img src='training_duration_1.PNG'>
<br>
<br>

These were the behaviours observed:
* For larger tensor size alone and deeper model alone, the difference in training duration change between CPU and GPU are not significantly different.
<img src='training_duration_2.png'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src='training_duration_3.png'>
<br>
<br>

* However, the difference in training duration change is significant for larger node size interacting with deeper model.
<img src='training_duration_4.png'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src='training_duration_5.png'>
<br>
<br>

## <u>**Conclusion**</u>
<br>

In conclusion, if a NN model is deep and has many nodes at each hidden layer, it can be trained faster on the GPU compared to on the CPU.
<br>
<br>
<br>
<br>

That is, folks! Do visit the references below to learn more from the others:
<br>

Develop Your First Neural Network with PyTorch, Step by Step:  
https://machinelearningmastery.com/develop-your-first-neural-network-with-pytorch-step-by-step/
<br>
<br>

How to Choose an Activation Function for Deep Learning:  
https://machinelearningmastery.com/choose-an-activation-function-for-deep-learning/
<br>
<br>

Using neural nets to recognize handwritten digits:  
http://neuralnetworksanddeeplearning.com/chap1.html
Here, you will learn why a hidden layer is coded as follows:
<img src='hidden_layer_definition.PNG'>
<br>
<br>

TRAINING WITH PYTORCH:  
https://pytorch.org/tutorials/beginner/introyt/trainingyt.html
<br>

Here, you will learn about the training loop:
<img src='training_loop.PNG'>
<br>
<br>
<br>
<br>
Hope you find this work useful. Feel free to connect with me in LinkedIn. Have a good day!

18 Dec 2023

John Wong &nbsp;&nbsp; [<img src='linkedin.png' height="40"/>](https://www.linkedin.com/in/wongchikeongjohn)
<br>

**[BACK TO MAIN PAGE ==>](https://github.com/johnwck/my_da_ds_work/tree/master)**
<br>
