.class public abstract Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;
.super Ljava/lang/Object;
.source "SshPublicKey.java"


# instance fields
.field protected mData:Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

.field private mKeyType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->mData:Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    .line 29
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->mKeyType:Ljava/lang/String;

    .line 30
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->mData:Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->mKeyType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString(Ljava/lang/String;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;---><init>(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getPublicKeyBlob()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    const-string v0, ""

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->mData:Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V

    .line 41
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;->mData:Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ssh/key/SshPublicKey;--->getPublicKeyBlob()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract putData(Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;)V
.end method
