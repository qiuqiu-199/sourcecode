.class final Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;
.super Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;
.source "AutoValue_ParcelableKeyRing.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_ParcelableKeyRing;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;---><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 33
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getBytes()[B

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    .line 34
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    :goto_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object v4

    if-nez v4, :cond_1

    .line 40
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getExpectedFingerprint()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 45
    :goto_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getKeyIdHex()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 46
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getKeyIdHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    :goto_2
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getKeybaseName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 52
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getKeybaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    :goto_3
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getFbUsername()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 58
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 60
    :cond_4
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;->getFbUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
