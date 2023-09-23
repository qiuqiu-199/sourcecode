.class public abstract Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;
.super Ljava/lang/Object;
.source "BenchmarkInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;
    .locals 4

    .line 30
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_BenchmarkInputParcel;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_BenchmarkInputParcel;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;--->newInstance()Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
