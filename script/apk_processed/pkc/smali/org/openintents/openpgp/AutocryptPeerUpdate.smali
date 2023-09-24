.class public Lorg/openintents/openpgp/AutocryptPeerUpdate;
.super Ljava/lang/Object;
.source "AutocryptPeerUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/openintents/openpgp/AutocryptPeerUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final effectiveDate:Ljava/util/Date;

.field private final keyData:[B

.field private final preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;I)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    .line 50
    invoke-static {}, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->values()[Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, p2, p1

    iput-object p1, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ILorg/openintents/openpgp/AutocryptPeerUpdate$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEffectiveDate()Ljava/util/Date;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    return-object v0
.end method

.method public getKeyData()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    return-object v0
.end method

.method public getPreferEncrypt()Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    return-object v0
.end method

.method public hasKeyData()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 92
    iget-object v3, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    iget-object v3, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object p2, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    :goto_0
    iget-object p2, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    invoke-virtual {p2}, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int/2addr p2, v2

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/2addr v2, p2

    .line 106
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
