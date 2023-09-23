.class Lorg/sufficientlysecure/keychain/network/TlsPskCompat;
.super Ljava/lang/Object;
.source "TlsPskCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createTlsPskSslContext([B)Ljavax/net/ssl/SSLContext;
    .locals 7

    move-object/16 v4, p0

    .line 24
    :try_start_0
    new-instance v0, Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;-><init>([BLorg/sufficientlysecure/keychain/network/TlsPskCompat$1;)V

    const-string v4, "TLS"

    .line 25
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v0, v3, [Ljavax/net/ssl/TrustManager;

    invoke-virtual {v4, v2, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat;--->createTlsPskSslContext([B)Ljavax/net/ssl/SSLContext;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
