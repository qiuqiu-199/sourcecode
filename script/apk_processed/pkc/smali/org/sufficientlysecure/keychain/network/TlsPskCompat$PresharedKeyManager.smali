.class Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;
.super Ljava/lang/Object;
.source "TlsPskCompat.java"

# interfaces
.implements Ljavax/net/ssl/KeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/network/TlsPskCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresharedKeyManager"
.end annotation


# instance fields
.field presharedKey:[B


# direct methods
.method private constructor <init>([B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;->presharedKey:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;---><init>([B)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>([BLorg/sufficientlysecure/keychain/network/TlsPskCompat$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;-><init>([B)V

    return-void
.end method


# virtual methods
.method public chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;--->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;--->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x0

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;--->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x0

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;--->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 70
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;->presharedKey:[B

    const-string p0, "AES"

    invoke-direct {v1, v2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;--->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 74
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;->presharedKey:[B

    const-string p0, "AES"

    invoke-direct {v1, v2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/network/TlsPskCompat$PresharedKeyManager;--->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
