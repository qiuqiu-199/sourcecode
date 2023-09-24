.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;
.super Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;
.source "AutoValue_PgpSignEncryptInputParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 27
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;---><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 32
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;->getData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;->getInputBytes()[B

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;->getInputBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
