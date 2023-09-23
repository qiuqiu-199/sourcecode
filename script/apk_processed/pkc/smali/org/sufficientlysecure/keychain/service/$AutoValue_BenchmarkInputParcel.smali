.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_BenchmarkInputParcel;
.super Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;
.source "$AutoValue_BenchmarkInputParcel.java"


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 10
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BenchmarkInputParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x1

    if-ne v2, v1, :cond_0

    return v0

    .line 24
    :cond_0
    instance-of v2, v2, Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BenchmarkInputParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BenchmarkInputParcel;--->hashCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    const-string v0, "BenchmarkInputParcel{}"

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_BenchmarkInputParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
