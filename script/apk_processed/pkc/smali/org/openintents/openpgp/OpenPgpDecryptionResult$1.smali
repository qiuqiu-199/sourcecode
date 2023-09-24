.class final Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;
.super Ljava/lang/Object;
.source "OpenPgpDecryptionResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpDecryptionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/openintents/openpgp/OpenPgpDecryptionResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 7

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    if-le v0, v5, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 117
    :cond_1
    new-instance v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    invoke-direct {v0, v3, v6, v4}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I[B[B)V

    add-int/2addr v2, v1

    .line 120
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;->newArray(I)[Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 0

    .line 126
    new-array p1, p1, [Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    return-object p1
.end method
