#ifndef _INCLUDED_NETRAW_H_
#define _INCLUDED_NETRAW_H_
#ifdef __WIN32__
  #include <Winsock2.h>
#else
  #include <sys/socket.h>
  #include <netinet/in.h>
  #include <arpa/inet.h>
#endif

#include <sys/types.h>
#include <stdio.h>
#include <string.h>

namespace Net{

//====================================================================//
//  Net::Address: Network address class
//  (C) James Bruce
//====================================================================//
#ifdef __WIN32__
    typedef int socklen_t;
#endif
class Address {
  sockaddr addr;
  socklen_t addr_len;
public:
  Address()
    {memset(&addr,0,sizeof(addr)); addr_len=0;}
  Address(const Address &src)
    {copy(src);}
  ~Address()
    {reset();}

  bool setHost(const char *hostname,int port);
  void setAny(int port=0);

  bool operator==(const Address &a) const
    {return(addr_len==a.addr_len && memcmp(&addr,&a.addr,addr_len)==0);}
  void copy(const Address &src)
    {memcpy(&addr,&src.addr,src.addr_len); addr_len=src.addr_len;}
  void reset()
    {memset(&addr,0,sizeof(addr)); addr_len=0;}
  void clear()
    {reset();}
#ifdef __WIN32__
  u_long getInAddr() const;
#else
  in_addr_t getInAddr() const;
#endif
  void print(FILE *out = stdout) const;

  friend class UDP;
};

//====================================================================//
//  Net::UDP: Simple raw UDP messaging
//  (C) James Bruce
//====================================================================//

class UDP {
  int fd;
public:
  unsigned sent_packets;
  unsigned sent_bytes;
  unsigned recv_packets;
  unsigned recv_bytes;
public:
  UDP() {
      fd = -1;
      close();
#ifdef __WIN32__
      WSADATA wsaData;
      int iResult;
      u_long iMode = 0;

      iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
      if (iResult != NO_ERROR)
          printf("Error at WSAStartup()\n");
#endif
  }
  ~UDP() {close();}

  bool open(int port = 0, bool share_port_for_multicasting=false, bool multicast_include_localhost=false, bool blocking=false);
  bool addMulticast(const Address &multiaddr, const Address &interface_);
  void close();
  bool isOpen() const
    {return(fd >= 0);}

  bool send(const void *data,int length,const Address &dest);
  int  recv(void *data,int length,Address &src);
  bool wait(int timeout_ms = -1) const;
  bool havePendingData() const
    {return(wait(0));}

  int getFd() const
    {return(fd);}
};

}; // namespace Net

#endif
