.class final Lorg/openintents/openpgp/OpenPgpMetadata$1;
.super Ljava/lang/Object;
.source "OpenPgpMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/openintents/openpgp/OpenPgpMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpMetadata;
    .locals 6

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 118
    new-instance v3, Lorg/openintents/openpgp/OpenPgpMetadata;

    invoke-direct {v3}, Lorg/openintents/openpgp/OpenPgpMetadata;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/openintents/openpgp/OpenPgpMetadata;->filename:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/openintents/openpgp/OpenPgpMetadata;->mimeType:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/openintents/openpgp/OpenPgpMetadata;->modificationTime:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/openintents/openpgp/OpenPgpMetadata;->originalSize:J

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/openintents/openpgp/OpenPgpMetadata;->charset:Ljava/lang/String;

    :cond_0
    add-int/2addr v2, v1

    .line 128
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpMetadata$1;->newArray(I)[Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/openintents/openpgp/OpenPgpMetadata;
    .locals 0

    .line 134
    new-array p1, p1, [Lorg/openintents/openpgp/OpenPgpMetadata;

    return-object p1
.end method
