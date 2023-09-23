.class final Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult$1;
.super Ljava/lang/Object;
.source "ConsolidateResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 40
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;-><init>(Landroid/os/Parcel;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult$1;->newArray(I)[Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 44
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/operations/results/ConsolidateResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
