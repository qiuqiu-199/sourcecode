.class public Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;
.super Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;
.source "SshECDSAPublicKey.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "ecdsa-sha2-"


# instance fields
.field private mCurve:Ljava/lang/String;

.field private mQ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ecdsa-sha2-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;->mCurve:Ljava/lang/String;

    .line 32
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;->mQ:Ljava/math/BigInteger;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;---><init>(Ljava/lang/String;Ljava/math/BigInteger;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 37
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;->mCurve:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString(Ljava/lang/String;)V

    .line 38
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;->mQ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshECDSAPublicKey;--->putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
