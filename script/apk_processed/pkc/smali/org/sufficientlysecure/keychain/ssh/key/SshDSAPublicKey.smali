.class public Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;
.super Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;
.source "SshDSAPublicKey.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "ssh-dss"


# instance fields
.field private mG:Ljava/math/BigInteger;

.field private mP:Ljava/math/BigInteger;

.field private mQ:Ljava/math/BigInteger;

.field private mY:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    const-string v0, "ssh-dss"

    .line 31
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mP:Ljava/math/BigInteger;

    .line 33
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mQ:Ljava/math/BigInteger;

    .line 34
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mG:Ljava/math/BigInteger;

    .line 35
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mY:Ljava/math/BigInteger;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;---><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 40
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mP:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    .line 41
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mQ:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    .line 42
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mG:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;->mY:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshDSAPublicKey;--->putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
