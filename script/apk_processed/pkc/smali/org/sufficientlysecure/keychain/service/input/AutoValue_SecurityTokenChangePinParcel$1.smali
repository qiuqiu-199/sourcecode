.class final Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_SecurityTokenChangePinParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 12
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;

    .line 13
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 19
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/input/AutoValue_SecurityTokenChangePinParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method