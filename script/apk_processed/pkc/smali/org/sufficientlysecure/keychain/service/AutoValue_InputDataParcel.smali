.class final Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;
.source "AutoValue_InputDataParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 27
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;-><init>(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Z)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;---><init>(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 32
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;->getDecryptInput()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;->getMimeDecode()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
