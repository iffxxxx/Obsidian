![[Znet_ Deep Learning Approach for 2D MRI Brain.pdf]]

## Keyword 
#004_Deep_Learning
## ABSTRACT
Deep learning approaches have attracted researchers in medical imaging due to their capacity, performance, and potential to assist in accurate diagnosis, prognosis, and medical treatment technologies.

Methods and procedures
	This paper presents a novel framework for segmenting 2D brain tumors in MR images using deep neural networks (DNN) and utilizing data augmentation strategies. The proposed approach (Znet) is based on the idea of skip-connection, encoder-decoder architectures, and data amplification to propagate the intrinsic affinities of a relatively smaller number of expert delineated tumors, e.g., hundreds of patients of the low-grade glioma (LGG), to many thousands of synthetic cases. 

## INTRODUCTION
1. The left side of the network represents the normal architecture of a convolutional network, and each block contains two 3 × 3 convolutions, rectified linear unit (ReLU), and a 2 × 2 max pooling respec- tively; 
   this process is called **down-sampling**. At the end of each contracting block, the image size is reduced, and feature channels are doubled. 
2. The right side of Unet architecture is called expansive path, which consists of an up-sampling of the feature map followed by a 2 × 2 convolution that reduces the number of feature channels by half.  Unet also applies concatenation between the output of each block on the left side of the diagram with the corresponding cropped block on the right side, cropping or matching arrays sizes are essential to combine arrays into one array, and then apply another two 3×3 convolutions followed by a ReLU activation function.
>    In the current literature, some studies on MRI tumor segmentation use alternative methods, such as convolutional networks, random forests, and Unet.
3. Ankari et al. introduced genetic algorithms (GA) with convolutional networks to perform brain tumors segmentation. Several experiments were performed by for brain tumor segmentation using Feature Pyramid Networks (FPNs), RESNET, and Unet on TCGA (The Cancer Genome Atlas) dataset. 

A recent study intended to build an effective segmen- tation system for brain tumors using deep learning meth- ods, specifically Cascade Convolutional Neural Network (C-CNN). Their approach depends on a small amount of data rather than using the entire dataset, which **overcomes high computation time constraints, restricts resource use, and reduces the overfitting problem**. 
## METODOLOGY
### DATASET
LAIR MRI images, which contain LGG enhanced tumor images.
Neuro- radiology experts manually reviewed, annotated, and labeled the FLAIR images for 110 patients. For pathological cases, the experts delineated the shape boundary of the FLAIR abnormality (tumor) for each image. The original MRI and the **manually labeled** masks represented the training dataset.

### DATAPROCESSING
Images resolution in the original dataset was 256 × 256, and due to extensive processing and computation time for the size of the original image, we resized data to 128 × 128 pixels.
We used **Albumentations**, a free and open-source python library to perform the necessary images augmentation 

## ZNET FRAMEWORK
In the proposed network architecture, we utilized the concepts of two well-known segmentation methods to construct a novel framework for MR images tumor segmentation; **adversarial networks (AN)** and **Unet** method. 

The architecture consists of an encoding part (analytic downsampling) and a decoder part (synthetic upsampling).

#### ENCODING PART
The encoder part consists of five blocks, where each encoder block contains double convolutions combined by batch normalization and **rectified activation function ReLU** (equation 2) and followed by max-pooling. The output of the encoder block is concatenated with the encoder block input. Note, the encoder block input is interpolated to match the feature map of the encoder block output.

#### DECODING PART
The decoder part consists of five blocks, the same as the encoder block, except for the use of **ConvTranspose2d** instead of max-pooling. ConvTranspose2d is usually used to enlarge a tensor at the end of each decoder block, so we finally get the original image dimensions in the last decoder block. The final block is the output block which consists of a single convolution and sigmoid activation function (equation 3). We trained the model for 200 epochs using adaptive moment estimation (ADAM) optimizer (equation 4),three channels 128 × 128 pixels, a batch size of 32, and binary cross-entropy loss function.

## RESULTS
> al.: Znet: Deep Learning Approach for 2D MRI Brain Tumor Segmentation FIGURE 7

[[Znet_ Deep Learning Approach for 2D MRI Brain.pdf#page=6&selection=2,3,5,8|Znet_ Deep Learning Approach for 2D MRI Brain, page 6]]
Part (A) shows the original images before the segmentation process, 
(B) shows the ground truth for tumor location and shape in the original image, 
(C) indicates the produced mask (location and shape) for the tumor using Znet model, 
(D) dis- plays the constructed mask for tumor using Unet model, 
(E) shows the auto segmentation of tumor using the Znet model, 
(F) is the corresponding segmentation using Unet, and 
(G) is the overlap between Znet and Unet. 

The analysis of the 432 testing dataset indicates that the Znet model can predict and segment the tumor in MR images with a dice value of about 0.92 and dice loss of 0.08.

The architecture relies on auto encoder-decoder, the concept of skip-connections, and resid- ual neural networks, which requires combining the output of the previous layer with the next layer. 