#ifndef OpenSSLShim_h
#define OpenSSLShim_h

#include <checkid/conf.h>
#include <checkid/evp.h>
#include <checkid/err.h>
#include <checkid/bio.h>
#include <checkid/x509.h>
#include <checkid/cms.h>

#undef SSL_library_init
static inline void SSL_library_init() {
    OPENSSL_init_ssl(0, NULL);
}

#undef SSL_load_error_strings
static inline void SSL_load_error_strings() {
    OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS \
                     | OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
}

#undef OpenSSL_add_all_ciphers
static inline void OpenSSL_add_all_ciphers() {
    OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_CIPHERS, NULL);
}

#undef OpenSSL_add_all_digests
static inline void OpenSSL_add_all_digests() {
    OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_DIGESTS, NULL);
}

#undef OpenSSL_add_all_algorithms
static inline void OpenSSL_add_all_algorithms() {
    #ifdef OPENSSL_LOAD_CONF
    OPENSSL_add_all_algorithms_conf();
    #else
    OPENSSL_add_all_algorithms_noconf();
    #endif
}

#endif
