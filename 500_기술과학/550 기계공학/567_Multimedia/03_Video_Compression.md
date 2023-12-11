#500_기술과학 #550_기계공학 #567_통신공학 #Multimedia
## VIDEO
#### Video Bit Rate Calculation
Bit Rate = width * height * depth * fps (bits/sec)

**ITU** : International Telecommunications Union : H.261 - H.264
**ISO** : International Standards Organization : JPEG, MPEG
### H.261
Developed by CCITT (Consultative Committee for International Telephone and Telegraph – currently, ITU) in 1988-1990 
Designed for video conferencing, video-telephone applications over **ISDN** telephone lines. 
Codec supports bit-rate of p x 64 Kbps, where p ranges from 1 to 30 (2048 kbps) 
Require that the delay of the video encoder be less than 150 msec real-time bidirectional video conferencing.

#### Frame Sequence
Two frame types : **Intra-frame (I-frames)** and **Inter-frames(P-frame)**

##### Intra-frame Coding
![[Pasted image 20231011155509.png]]
- Macroblocks are 16 x 16 pixel areas on Y plane of original image.
- macroblock usually consists of 4 Y blocks, 1 Cr block, and 1 Cb block.
- Quantization is by **constant value** for all DCT coefficients (i.e., no quantization table as in JPEG).

##### Inter-frame (P-frame) Coding
![[Pasted image 20231011155812.png]]
Previous image is called **reference image**, the image to encode is called **target image**.
Points to emphasize:
The difference image (not the target image itself) is encoded.
Need to use the **decoded image** as reference image, not the original.
We're using "Mean Absolute Error" (MAE) to decide best block.
	Can also use "Mean Squared Error" $(MSE) = sum(E*E)/N$

##### Motion Vector Searches
![[Pasted image 20231011160148.png]]
$C(x + k, y + l)$ pixels in the macro block with upper left corner (x, y) in the Target frame.

$R(x + i + k, y + j + l)$ pixels in the macro block with upper left corner (x + i, y + j) in the Reference frame.

**Cost function** is:
$$MAE(i,j) = \frac{1}{N^2} \sum_{k=0}^{N-1}\sum\limits_{t=0}^{N-1}C(x+k,y+l)-R(x+i+k,y+j+l)$$
Goal is to find a vector (u, v) such that _MAE_(u, v) is minimum.
### H.263
H.263 is an improved video coding standard for video conferencing and other audiovisual services transmitted on **Public Switched Telephone Networks(PSTN).**

Uses predictive coding inter-frames -> reduce **temporal redundancy** 
transform coding for the remaining signal -> reduce **spatial redundancy** 
	(for both Intra-frames and inter-frame prediction).
### MPEG
#### History
- MPEG-1  (1992)
	Coding of video and audio for storage media (CD-ROM, 1.5Mbps)
	CCIR601 - 4:3비율의 디지털 TV포멧
	non-interlaced video : 수

- MPEG-2  (1994)
	Coding of video and audio for transport and storage (4~80Mbps)
	Digital TV (HDTV) and DVD

MPEG-1 and MPEG-2 coding method is **frame-based**  (**block-based**)
	각프레임을 프레임별로 저장
	- block-based coding, it is possible that multiple potential matches yield small prediction errors. Some may not coincide with the real motion.
	- For VOP-based coding, each VOP is of **arbitray shape** and ideally will obtain a unique **motion vector** consistent wirh the actual object motion.
	Inter Prame

Compared with MPEG-2, MPEG-4 is an entiredly new standard for
	- **Composing** media objects to create desirable audiovisual scenes.
	- **Multiplexing and synchronising** the bitstreams for these media data entities so that they can be transmitted wirh guaranteed Quality of Service (QoS)
	- **Interacting** with the audiovisual scene at the receiving end.

- MPEG-4  (v1:1999, v2: 2000, v3: 2001)
	Coding of natural and synthetic media objects
	Web and mobile applications
	**Object Based Coding**
	Content based Coding
		![[Pasted image 20231011172429.png|500]]
		Video Object Oriented Hierarchical Description of a Scene in MPEG-4 Visual Bitstreams
		
		![[Pasted image 20231011175104.png|500]]
			**Video-Object Sequence** : 
				delivers the complete MPEG4 visual scene
				contain 2D/3D natural or synyhetic objects.
			**Video Object** : 
				A particular object in the scene, which can be of arbitrary (non-rectangular) shape corresponding to an object or background of the scene.
			**Video Object Layer** :
				facilitates a way to support (multi-layered) scalabe coding.
				VO can have multiple VOLs under scalable (multi bitrate) coding
				cna have single VOL under non-scalable coding.
			**Group of Video Object Planes** :
				Groups of video object planes together (optional level).
			**Video Object Plane** :
				A snapshot of a VO at a particular moment.

- MPEG-7 (2001~)
	main object
		Multimedia content description for AV materials
		Media searching and filtering
	Need
		- Fast & Accurate Access
		- Personalized Content Production and Consumption
		- Content Management
		- Automation
	It is also applicable to any multimedia applications
	MPEG-7 became an international Standard in September 2001 - with the formal name **Multimedia Content Description Interface**.
	

- MPEG-21 (2001~)
	Multimedia framework for integration of multimedia technologies
	Transparent and augmented use of multimedia resources
#### Frame Sequence
![[Pasted image 20231011161134.png]]
**Problem**: some macroblocks need information **not in the previous reference frame**.

![[Pasted image 20231011161222.png]]
MPEG solution: add third frame type: bidirectional frame, or *B-frame*.
	earch for matching macroblocks in both _past_ and _future_ frames.

Larger gaps between I and P frames, so need to expand motion vector search range.
B frame macroblocks can specify two motion vectors (one to past and one to future), indicating result is to be averaged.
