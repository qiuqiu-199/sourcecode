.class final Lorg/openintents/openpgp/OpenPgpError$1;
.super Ljava/lang/Object;
.source "OpenPgpError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/openintents/openpgp/OpenPgpError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpError$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpError;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpError;
    .locals 4

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 102
    new-instance v2, Lorg/openintents/openpgp/OpenPgpError;

    invoke-direct {v2}, Lorg/openintents/openpgp/OpenPgpError;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    add-int/2addr v1, v0

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpError$1;->newArray(I)[Lorg/openintents/openpgp/OpenPgpError;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/openintents/openpgp/OpenPgpError;
    .locals 0

    .line 113
    new-array p1, p1, [Lorg/openintents/openpgp/OpenPgpError;

    return-object p1
.end method
