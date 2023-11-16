![[Attention Res-UNet with Guided Decoder for semantic segmentation of brain tumors.pdf]]
## ABSTRACT
The present study proposes a new deep learning generator architecture called Attention Res-UNet with Guided Decoder (ARU-GD) for the segmentation of brain tumors. The individual loss function to each decoder layer helps to supervise the learning process of each layer in the decoder and thereby enables them to generate better feature maps. The attention gates in the generator **focuses on the activation of relevant information** instead of allowing all information to pass through the skip connections in the Res-UNet. 

## INTRODUTION
The present study proposes a new deep learning architecture, that introduces guided decoder and inculcates the properties of Res-UNet and attention gates, which we call as the Attention Res- UNet with Guided Decoder (ARU-GD). 
### BRAIN
Introduction Growth of abnormal cells in the brain may cause brain tumor. The gliomas are the type of tumors, which originate from glial cells. They are broadly categorized as **Higher Grade Gliomas (HGG)** and **Lower Grade Gliomas (LGG)**. The HGG grows rapidly with a high degree of cell infiltration in comparison to the LGG.

### PROBLEMS
Gliomas can diffuse out, have poor contrasts and are difficult to detect due to the intensity variations in MRI scans. This makes the task of segmenting the brain tumors quite arduous. Previously, a wide range of techniques were developed for the segmentation of brain tumors in MRI images. Some of the common image segmentation methods include, region growing methods, clustering based methods, and watershed algorithms. However, the effectiveness of these techniques are limited because of **their sensitivity to noise and artifacts**.

## METHOD
### NETWORK ARCHITECTURE
Proposed guided decoder The present study proposes to train each decoder layer explicitly with its individual loss function and hence, **predicts output at each layer** instead of only at the final layer. 

This arrangement guides network to generate better feature representation at each layer.

#### ATTENTION GATES
Attention gates Attention mechanism **focuses on a specific region** of the image while **ignoring the others**. 

### Res-UNet with Guided Decoder
Deeper net- works are required to learn more complex features from the data. However, as the network goes deeper, it **loses more spatial information** thereby reducing the segmentation accuracy.

#### UNET
UNet uses skip connec- tions to pass contextual and spatial information between the encoder and decoder. This helps in retrieving important spatial information lost during downsampling. However, the UNet passes **all the information** through its skip connections.

#### ATTENTION GATES
The attention gates are used to merge **only relevant feature activations** in the decoder. The Residual blocks help the UNet in extracting more features at every layer. Further, to improve the segmentation accuracy, we have proposed and added guided decoder into the attention Res-UNet to produce a new hybrid architecture – “Attention Res-UNet with Guided Decoder” as shown in Fig. 1. The **loss in guided decoder** helps each layer of the decoder to generate better features, and subsequently increases the segmentation accuracy at the final output layer.

#### ENCODER PATH
Our model takes an input of size 240 × 240 × 4, where the image resolution is 240 × 240.

Four channels corresponding to four modalities of the MRI dataset  
***(Four channels = residual blocks?)***
##### Floor
The residual blocks consist of two 3 × 3 dilated convolutional layers, each followed by a Batch Normalization (BN) layer and Leaky Rectified Linear Unit (Leaky ReLU) activation function.
##### T1
The convolutional blocks in the first and second encoder layers have a dilation rate of 1.
##### Contrast enhanced T1 and T2
The third and fourth encoder layers have dilation rates of 2 and 4 respectively

#### BOTTLENECK
The bottleneck layer connects the encoder and decoder of the pro- posed model. 
Residual block with 1024 feature maps of size 15 × 15. 
The convolution layers in the residual block have a dilation rate of 8.

The output of the bottleneck layer moves in **two different paths**.
One enters the decoder path into the convolutional transpose layer 
and the other becomes the gating signal for the attention gate.

#### DECODER PATH
The decoder path also consists of four layers, each of which has a residual block preceded by a 2 × 2 convolutional transpose layer. 

The output from attention gate concatenates with the upsampled output from the previous decoder layer. After concatenation, the output is passed to the residual blocks. Same residual blocks are used as those in the encoder path. In each decoder layer, the number of feature maps is halved while their size is doubled. The output of the residual block at each layer is upsampled to the size of 240 × 240 and passed through a classification layer and softmax activation function. 

The classification layer is used to decrease the number of feature maps to N channels (N = 4). A softmax activation converts the feature maps into probabilities. As a result, each channel in the final output of the model becomes probability maps for a particular class.These outputs are then compared with the ground truth and the loss is calculated. 

Only the output of the last decoder layer D4 is considered as the main output of the model.

#### DATASET
The **BraTS dataset** is divided into 259 scans of HGG and 76 scans of LGG patients. The MRI scans of each patient consist of four sequences namely T1, contrast enhanced T1, T2 and FLAIR. The ground truth segmented images are divided into 4 classes with labels - 0: background and non-tumor region, 1: Necrosis, 2: Edema, and 4: enhancing tumor (ET). The dimensions of images are (240, 240, 155). The slices in four modalities along with ground truth label are shown in Fig. 4. Present study focuses on HGG patients only. By taking 25 slices from each modality of each of the 259 HGG patients, we had a total of 6475 images of each modality.

In order to prevent overfitting, we have randomly performed data augmentations of horizontal and vertical flip, height and width shifts, rotations, zoom, and shear on our training set during training of our model.
## EXPERIMENTAL RESULTS
the main concept behind residual blocks is adding an “identity shortcut connection” that jumps over multiple layers.

Residual blocks have been implemented over the UNet architecture to overcome the problem of degradation and saturation, and to extract more features at each layer.
By adding the residual blocks to the U-Net, the Res-UNet is formed, which has improved the segmentation quality over the UNet model.

The training of the proposed model is computationally heavy, hence work can be extended to improve memory requirements and computational time.