.class final Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_ChangeUnlockParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;

    .line 14
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    :cond_1
    const-class v3, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v0, v1, v2, v6}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;-><init>(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 21
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
