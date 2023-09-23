.class final Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;
.super Ljava/lang/Object;
.source "AutoValue_AuthenticationData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 15
    new-instance v6, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;

    .line 16
    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 17
    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-class v0, Ljava/lang/Long;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 19
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;-><init>(JLjava/lang/Long;Ljava/util/List;I)V

    return-object v6

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;->newArray(I)[Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 24
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationData;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
