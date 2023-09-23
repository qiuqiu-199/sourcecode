.class final Lorg/openintents/openpgp/OpenPgpSignatureResult$1;
.super Ljava/lang/Object;
.source "OpenPgpSignatureResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpSignatureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/openintents/openpgp/OpenPgpSignatureResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpSignatureResult$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 5

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 188
    new-instance v3, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(Landroid/os/Parcel;ILorg/openintents/openpgp/OpenPgpSignatureResult$1;)V

    add-int/2addr v2, v1

    .line 191
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpSignatureResult$1;->newArray(I)[Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 0

    .line 197
    new-array p1, p1, [Lorg/openintents/openpgp/OpenPgpSignatureResult;

    return-object p1
.end method
