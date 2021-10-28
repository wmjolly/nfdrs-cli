CC=g++
CFLAGS=-g -fopenmp -I/usr/local/include -std=c++11 -lconfig4cpp
DEPS = nfdrs2016.h
TARGET = nfdrscliv4

#%.o: %.cpp $(DEPS)
#	$(CC) -c -o $@ $< $(CFLAGS)

OBS = RunNFDRS.o CNFDRSParams.o nfdrs2016.o utctime.o deadfuelmoisture.o NFDRSConfiguration.o \
 livefuelmoisture.o DFMCalcState.o LFMCalcState.o NFDR2016CalcState.o NFDRSInitConfig.o \
 RunNFDRSConfiguration.o CFW21Data.o csv_readrow.o

TARGET = NFDRScliV4
$(TARGET): $(OBS)
	$(CC) $(CFLAGS) $(OBS) /src/NFDRScliV4/config4cpp/lib/libconfig4cpp.a -static -O1 -o $@ -L/usr/local/lib -L/src/NFDRScliV4/config4cpp/lib -I/usr/local/include -I/src/NFDRScliV4/config4cpp/include/config4cpp


nfdrs2016.o: nfdrs2016.cpp nfdrs2016.h utctime.h
	$(CC) $(CFLAGS) -c nfdrs2016.cpp

deadfuelmoisture.o: deadfuelmoisture.cpp deadfuelmoisture.h
	$(CC) $(CFLAGS) -c deadfuelmoisture.cpp

utctime.o: utctime.cpp utctime.h
	$(CC) $(CFLAGS) -c utctime.cpp

livefuelmoisture.o: livefuelmoisture.cpp livefuelmoisture.h
	$(CC) $(CFLAGS) -c livefuelmoisture.cpp

DFMCalcState.o: DFMCalcState.cpp DFMCalcState.h
	$(CC) $(CFLAGS) -c DFMCalcState.cpp

LFMCalcState.o: LFMCalcState.cpp LFMCalcState.h
	$(CC) $(CFLAGS) -c LFMCalcState.cpp

NFDR2016CalcState.o: NFDR2016CalcState.cpp NFDR2016CalcState.h
	$(CC) $(CFLAGS) -c NFDR2016CalcState.cpp

CFW21Data.o: CFW21Data.cpp CFW21Data.h
	$(CC) $(CFLAGS) -c CFW21Data.cpp

csv_readrow.o: csv_readrow.cpp csv_readrow.h
	$(CC) $(CFLAGS) -c csv_readrow.cpp

RunNFDRS.o: RunNFDRS.cpp 
	$(CC) $(CFLAGS) -c RunNFDRS.cpp
	
RunNFDRSConfig.o: RunNFDRSConfig.cpp RunNFDRSConfig.h
	$(CC) $(CFLAGS) -c RunNFDRSConfig.cpp
	
RunNFDRSConfiguration.o: RunNFDRSConfiguration.cpp RunNFDRSConfiguration.h
	$(CC) $(CFLAGS) -c RunNFDRSConfiguration.cpp 
	
CNFDRSParams.o: CNFDRSParams.cpp CNFDRSParams.h
	$(CC) $(CFLAGS) -c CNFDRSParams.cpp
	
NFDRSConfiguration.o: NFDRSConfiguration.cpp NFDRSConfiguration.h
	$(CC) $(CFLAGS) -c NFDRSConfiguration.cpp
	
NFDRSInitConfig.o: NFDRSInitConfig.cpp NFDRSInitConfig.h
	$(CC) $(CLFAGS) -c NFDRSInitConfig.cpp

clean:
	rm -f *.o core



