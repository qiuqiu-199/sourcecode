.class public abstract Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;
.super Ljava/lang/Object;
.source "UserPacket.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/UserPacketsModel$UidStatusModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/UserPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UidStatus"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public keyStatus()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .locals 5

    move-object/16 v2, p0

    .line 64
    sget-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->VERIFICATON_STATUS_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;->key_status_int()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/UserPacket$UidStatus;--->keyStatus()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
