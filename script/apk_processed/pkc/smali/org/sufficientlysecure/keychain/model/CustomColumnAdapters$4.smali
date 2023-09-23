.class final Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;
.super Ljava/lang/Object;
.source "CustomColumnAdapters.java"

# interfaces
.implements Lcom/squareup/sqldelight/ColumnAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/ColumnAdapter<",
        "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;->decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-nez v1, :cond_0

    .line 73
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->UNVERIFIED:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v1

    .line 75
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 78
    :pswitch_0
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SELF:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v1

    .line 77
    :pswitch_1
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v1

    .line 76
    :pswitch_2
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->UNVERIFIED:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;--->decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public encode(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Ljava/lang/Long;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 85
    sget-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedKeyRing$VerificationStatus:[I

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->ordinal()I

    move-result v3

    aget v3, v0, v3

    packed-switch v3, :pswitch_data_0

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_0
    const-wide/16 v0, 0x2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :pswitch_1
    const-wide/16 v0, 0x1

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :pswitch_2
    const-wide/16 v0, 0x0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;--->encode(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Ljava/lang/Long;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;->encode(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
