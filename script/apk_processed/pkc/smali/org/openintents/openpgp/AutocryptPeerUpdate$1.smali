.class final Lorg/openintents/openpgp/AutocryptPeerUpdate$1;
.super Ljava/lang/Object;
.source "AutocryptPeerUpdate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/AutocryptPeerUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/openintents/openpgp/AutocryptPeerUpdate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/AutocryptPeerUpdate;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/AutocryptPeerUpdate;
    .locals 5

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 115
    new-instance v3, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>(Landroid/os/Parcel;ILorg/openintents/openpgp/AutocryptPeerUpdate$1;)V

    add-int/2addr v2, v1

    .line 118
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;->newArray(I)[Lorg/openintents/openpgp/AutocryptPeerUpdate;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/openintents/openpgp/AutocryptPeerUpdate;
    .locals 0

    .line 124
    new-array p1, p1, [Lorg/openintents/openpgp/AutocryptPeerUpdate;

    return-object p1
.end method
