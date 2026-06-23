#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_in_V_data_V.dat");
unsigned int ap_apatb_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_in_V_keep_V.dat");
unsigned int ap_apatb_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_out_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_out_V_data_V.dat");
unsigned int ap_apatb_out_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_out_V_keep_V.dat");
unsigned int ap_apatb_out_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_out_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_out_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_out_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
using hls::sim::Byte;
extern "C" void ViT_Block(Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , int, int, int, int, int, int);
extern "C" void apatb_ViT_Block_hw(volatile void * __xlx_apatb_param_in_V_data_V, volatile void * __xlx_apatb_param_in_V_keep_V, volatile void * __xlx_apatb_param_in_V_strb_V, volatile void * __xlx_apatb_param_in_V_last_V, volatile void * __xlx_apatb_param_out_V_data_V, volatile void * __xlx_apatb_param_out_V_keep_V, volatile void * __xlx_apatb_param_out_V_strb_V, volatile void * __xlx_apatb_param_out_V_last_V, volatile void * __xlx_apatb_param_in_q, volatile void * __xlx_apatb_param_in_k, volatile void * __xlx_apatb_param_in_v, volatile void * __xlx_apatb_param_in_o, volatile void * __xlx_apatb_param_in_w_up, volatile void * __xlx_apatb_param_in_w_down) {
using hls::sim::createStream;
  // Collect __xlx_in_q__tmp_vec
std::vector<Byte<1>> __xlx_in_q__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_in_q__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_in_q)[i]);
}
  int __xlx_size_param_in_q = 256;
  int __xlx_offset_param_in_q = 0;
  int __xlx_offset_byte_param_in_q = 0*1;
  // Collect __xlx_in_k__tmp_vec
std::vector<Byte<1>> __xlx_in_k__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_in_k__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_in_k)[i]);
}
  int __xlx_size_param_in_k = 256;
  int __xlx_offset_param_in_k = 0;
  int __xlx_offset_byte_param_in_k = 0*1;
  // Collect __xlx_in_v__tmp_vec
std::vector<Byte<1>> __xlx_in_v__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_in_v__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_in_v)[i]);
}
  int __xlx_size_param_in_v = 256;
  int __xlx_offset_param_in_v = 0;
  int __xlx_offset_byte_param_in_v = 0*1;
  // Collect __xlx_in_o__tmp_vec
std::vector<Byte<1>> __xlx_in_o__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_in_o__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_in_o)[i]);
}
  int __xlx_size_param_in_o = 256;
  int __xlx_offset_param_in_o = 0;
  int __xlx_offset_byte_param_in_o = 0*1;
  // Collect __xlx_in_w_up__tmp_vec
std::vector<Byte<1>> __xlx_in_w_up__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_in_w_up__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_in_w_up)[i]);
}
  int __xlx_size_param_in_w_up = 1024;
  int __xlx_offset_param_in_w_up = 0;
  int __xlx_offset_byte_param_in_w_up = 0*1;
  // Collect __xlx_in_w_down__tmp_vec
std::vector<Byte<1>> __xlx_in_w_down__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_in_w_down__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_in_w_down)[i]);
}
  int __xlx_size_param_in_w_down = 1024;
  int __xlx_offset_param_in_w_down = 0;
  int __xlx_offset_byte_param_in_w_down = 0*1;
auto* sin_V_data_V = createStream((hls::stream<char>*)__xlx_apatb_param_in_V_data_V);
auto* sin_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_in_V_keep_V);
auto* sin_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_in_V_strb_V);
auto* sin_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_in_V_last_V);
  //Create input buffer for out_V_data_V
  ap_apatb_out_V_data_V_cap_bc = __xlx_out_V_data_V_V_size_Reader.read_size();
  char* __xlx_out_V_data_V_input_buffer= new char[ap_apatb_out_V_data_V_cap_bc];
auto* sout_V_data_V = createStream((hls::stream<char>*)__xlx_apatb_param_out_V_data_V);
  //Create input buffer for out_V_keep_V
  ap_apatb_out_V_keep_V_cap_bc = __xlx_out_V_keep_V_V_size_Reader.read_size();
  char* __xlx_out_V_keep_V_input_buffer= new char[ap_apatb_out_V_keep_V_cap_bc];
auto* sout_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_out_V_keep_V);
  //Create input buffer for out_V_strb_V
  ap_apatb_out_V_strb_V_cap_bc = __xlx_out_V_strb_V_V_size_Reader.read_size();
  char* __xlx_out_V_strb_V_input_buffer= new char[ap_apatb_out_V_strb_V_cap_bc];
auto* sout_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_out_V_strb_V);
  //Create input buffer for out_V_last_V
  ap_apatb_out_V_last_V_cap_bc = __xlx_out_V_last_V_V_size_Reader.read_size();
  char* __xlx_out_V_last_V_input_buffer= new char[ap_apatb_out_V_last_V_cap_bc];
auto* sout_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_out_V_last_V);
  // DUT call
  ViT_Block(__xlx_in_q__tmp_vec.data(), __xlx_in_k__tmp_vec.data(), __xlx_in_v__tmp_vec.data(), __xlx_in_o__tmp_vec.data(), __xlx_in_w_up__tmp_vec.data(), __xlx_in_w_down__tmp_vec.data(), sin_V_data_V->data<char>(), sin_V_keep_V->data<char>(), sin_V_strb_V->data<char>(), sin_V_last_V->data<char>(), sout_V_data_V->data<char>(), sout_V_keep_V->data<char>(), sout_V_strb_V->data<char>(), sout_V_last_V->data<char>(), __xlx_offset_byte_param_in_q, __xlx_offset_byte_param_in_k, __xlx_offset_byte_param_in_v, __xlx_offset_byte_param_in_o, __xlx_offset_byte_param_in_w_up, __xlx_offset_byte_param_in_w_down);
// print __xlx_apatb_param_in_q
for (size_t i = 0; i < __xlx_size_param_in_q; ++i) {
((Byte<1>*)__xlx_apatb_param_in_q)[i] = __xlx_in_q__tmp_vec[__xlx_offset_param_in_q+i];
}
// print __xlx_apatb_param_in_k
for (size_t i = 0; i < __xlx_size_param_in_k; ++i) {
((Byte<1>*)__xlx_apatb_param_in_k)[i] = __xlx_in_k__tmp_vec[__xlx_offset_param_in_k+i];
}
// print __xlx_apatb_param_in_v
for (size_t i = 0; i < __xlx_size_param_in_v; ++i) {
((Byte<1>*)__xlx_apatb_param_in_v)[i] = __xlx_in_v__tmp_vec[__xlx_offset_param_in_v+i];
}
// print __xlx_apatb_param_in_o
for (size_t i = 0; i < __xlx_size_param_in_o; ++i) {
((Byte<1>*)__xlx_apatb_param_in_o)[i] = __xlx_in_o__tmp_vec[__xlx_offset_param_in_o+i];
}
// print __xlx_apatb_param_in_w_up
for (size_t i = 0; i < __xlx_size_param_in_w_up; ++i) {
((Byte<1>*)__xlx_apatb_param_in_w_up)[i] = __xlx_in_w_up__tmp_vec[__xlx_offset_param_in_w_up+i];
}
// print __xlx_apatb_param_in_w_down
for (size_t i = 0; i < __xlx_size_param_in_w_down; ++i) {
((Byte<1>*)__xlx_apatb_param_in_w_down)[i] = __xlx_in_w_down__tmp_vec[__xlx_offset_param_in_w_down+i];
}
sin_V_data_V->transfer((hls::stream<char>*)__xlx_apatb_param_in_V_data_V);
sin_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_in_V_keep_V);
sin_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sin_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sout_V_data_V->transfer((hls::stream<char>*)__xlx_apatb_param_out_V_data_V);
sout_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_out_V_keep_V);
sout_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_out_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sout_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_out_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
}
