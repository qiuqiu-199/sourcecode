.class public Lorg/openintents/openpgp/OpenPgpDecryptionResult;
.super Ljava/lang/Object;
.source "OpenPgpDecryptionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/openintents/openpgp/OpenPgpDecryptionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final decryptedSessionKey:[B

.field private final result:I

.field private final sessionKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    .line 46
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-eq v1, p1, :cond_2

    .line 52
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "sessionkey must be null iff decryptedSessionKey is null"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 54
    :cond_2
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    .line 55
    iput-object p3, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDecryptedSessionKey()[B
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    return v0
.end method

.method public getSessionKey()[B
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public hasDecryptedSessionKey()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nresult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x2

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 96
    iget v1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int/2addr v1, v0

    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/2addr v0, v1

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
