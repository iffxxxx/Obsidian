## IP
### PSTN
(Public Switched Telephone Network) : 세계의 공중 회선 전화망들이 얽혀있는 전화망 - 유선전화
- 회선교환 방식으로 통화시 회선 독점
- 각 전화국 국설급 교환기에 가입자 수만큼의 PORT 필요
- 통화품질 및 안정성 보장
A **Gateway** is needed to connect the PSTN to the IP network
### VoIP
(Voice over Internet Protocol) : 패킷교환 방식으로 통화시 회선 공유
- 인터넷을 기반으로 하는 음성 전화로 보통 인터넷전화에서 사용
- G/K (Gate Keeper) : 한 대의 Gate Keeper만으로 전세계 지역 Cover
#### Issues
- Addressing
- Call admission, setup, control, release, etc
- IP network related : delay, jitter, packet loss, out-of-order
- Transmission overhead : Headers
- Small delay
	Small packet size![[Pasted image 20231013003945.png]]
	RTP HEADER
		![[Pasted image 20231013004137.png]]
		Ver(2bit) : 버전
		P(1bit) : 패딩
		X(1bit) : Extention
		CC(4bit) : CSRC Count
		M(1bit) : Marker
			M = 1 패킷이 무음기간 후 첫번째 음성 패킷임을 나타낸다
		PT(7bit) : 페이로드 유형 - 코덱마다 상이
		Sequence NO(16bit) : Sequence No 단위는 1씩 증가, 초기 값은 무작위 선택
		Time Stamp(32bit) : RTP데이터 패킷에서 첫번째 옥텟의 샘플링 순간(지터 계산을 허용하는 클록) 반영
		SSRC(32bit) : 동기화소스 식별
		CSRC(32bit)
#### H.323
standards from ITU (1996, 1st Version)
- Adopt some protocols (RTP/RTCP) from IETF
- More implementations
- Very complex
- Poor interoperability between vendors
Entities
	An endpoint on the LAN which provides for real-time, two-way communications with another H.323 terminal, Gateway, or MCU
	May provide audio, video, and/or data

전화 통신 기반

#### SIP
**Session Initiation Protocol** (SIP, RFC 2543) has been proposed as an alternative to H.323

텍스트 기반 프로토콜의 기능과 유사
UDP (사용자 데이터그램 프로토콜)와 TCP (전송 제어 프로토콜)을 모두 지원하는 하위 계층 프로토콜에 의존하지 않는다.

standards from IETF (1998, 1st Version)
	Similar functions as H.323
	Relatively easy because of textual natural instead of binary
	Better interoperability

Entities
	Terminal, Gatekeeper, Multipoint Control Unit (MCU), Gateway

인터넷 기반

### Wireless Networks
#### Universal Service
Fixed Service + Mobile Service

**General Wireless Communication Model**
![[Pasted image 20231014155433.png|500]]

#### Multiple Access Control (MAC)
Multiple access : to effectively utilize limited frequency resources by enabling multiple users to share radio communications channels to simultaneously conduct communications.

![[Pasted image 20231014155931.png|500]]
FDMA
	Frequency Division Multiple Access
TDMA
	Time Division Multiple Access
CDMA
	Code Division Multiple Access

### Wireless LAN
small range ( < 100m )


### IEEE 802.11 ( similar to Ethernet )
Access control
	- CSMA/CD (only one can send each time similar to TDMA, listen and transmit if no other transmission, otherwise wait)
	- Speed

### Bluetooth
Defined by Bluetooth Special Interest Group (SIG, industry)
Access control : TDD (Time Division Duplex) with circuit and packet switch
Speed : > 1Mbps

