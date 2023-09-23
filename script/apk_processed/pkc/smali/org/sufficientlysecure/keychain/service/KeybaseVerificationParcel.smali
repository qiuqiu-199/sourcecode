.class public Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;
.super Ljava/lang/Object;
.source "KeybaseVerificationParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mKeybaseProof:Ljava/lang/String;

.field public mRequiredFingerprint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mKeybaseProof:Ljava/lang/String;

    .line 35
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mRequiredFingerprint:Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mKeybaseProof:Ljava/lang/String;

    .line 30
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mRequiredFingerprint:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;---><init>(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 45
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mKeybaseProof:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mRequiredFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
