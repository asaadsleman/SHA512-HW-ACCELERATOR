/*
 * Copyright 1995-2021 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the Apache License 2.0 (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

#ifndef OPENSSL_SHA_H
# define OPENSSL_SHA_H
# pragma once

# ifndef OPENSSL_NO_DEPRECATED_3_0
#  define HEADER_SHA_H
# endif

# include <stddef.h>

# define SHA_DIGEST_LENGTH 20
# define SHA_LBLOCK 16
# define SHA512_DIGEST_LENGTH    64

# ifndef OPENSSL_NO_DEPRECATED_3_0
    /*
     * Unlike 32-bit digest algorithms, SHA-512 *relies* on SHA_LONG64
     * being exactly 64-bit wide. See Implementation Notes in sha512.c
     * for further details.
     */
     /*
      * SHA-512 treats input data as a
      * contiguous array of 64 bit
      * wide big-endian values.
      */
#  define SHA512_CBLOCK   (SHA_LBLOCK*8)
#  if (defined(_WIN32) || defined(_WIN64)) && !defined(__MINGW32__)
#   define SHA_LONG64 unsigned __int64
#  elif defined(__arch64__)
#   define SHA_LONG64 unsigned long
#  else
#   define SHA_LONG64 unsigned long long
#  endif

    typedef struct SHA512state_st {
        SHA_LONG64 h[8];
        SHA_LONG64 Nl, Nh;
        union {
            SHA_LONG64 d[SHA_LBLOCK];
            unsigned char p[SHA512_CBLOCK];
        } u;
        unsigned int num, md_len;
    } SHA512_CTX;

    int SHA512_Init(SHA512_CTX* c);
    int SHA512_Update(SHA512_CTX* c, const void* data, size_t len);
    int SHA512_Final(unsigned char* md, SHA512_CTX* c);
    void SHA512_Transform(SHA512_CTX* c,const unsigned char* data);
# endif
    unsigned char* SHA512(const unsigned char* d, size_t n, unsigned char* md);

#endif
