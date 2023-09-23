.class public abstract Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;
.super Ljava/lang/Object;
.source "PromoteKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createPromoteKeyringParcel(J[BLjava/util/List;)Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Ljava/util/List<",
            "[B>;)",
            "Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;"
        }
    .end annotation

    move-wide/16 v1, p0

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 41
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;-><init>(J[BLjava/util/List;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;--->createPromoteKeyringParcel(J[BLjava/util/List;)Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getCardAid()[B
.end method

.method public abstract getFingerprints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getMasterKeyId()J
.end method
