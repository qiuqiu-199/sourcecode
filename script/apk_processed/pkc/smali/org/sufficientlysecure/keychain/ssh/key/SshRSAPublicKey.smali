.class public Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;
.super Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;
.source "SshRSAPublicKey.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "ssh-rsa"


# instance fields
.field private mExponent:Ljava/math/BigInteger;

.field private mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const-string v0, "ssh-rsa"

    .line 29
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;->mExponent:Ljava/math/BigInteger;

    .line 31
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;---><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 36
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;->mExponent:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    .line 37
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putMPInt(Ljava/math/BigInteger;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshRSAPublicKey;--->putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
