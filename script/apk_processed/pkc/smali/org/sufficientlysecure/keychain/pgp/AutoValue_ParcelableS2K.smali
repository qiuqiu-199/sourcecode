.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;
.super Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;
.source "AutoValue_ParcelableS2K.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(IIIJ[B)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    move-object/16 p3, p6

    .line 27
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;-><init>(IIIJ[B)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;---><init>(IIIJ[B)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 32
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;->getEncryptionAlgorithm()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;->getS2kType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;->getS2kHashAlgo()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;->getS2kItCount()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;->getS2kIV()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
