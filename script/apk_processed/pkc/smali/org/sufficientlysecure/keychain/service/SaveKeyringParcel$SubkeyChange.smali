.class public abstract Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
.super Ljava/lang/Object;
.source "SaveKeyringParcel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubkeyChange"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 249
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFlagsOrExpiryChange(JLjava/lang/Integer;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
    .locals 13

    move-wide/16 v10, p0

    move-object/16 v12, p2

    move-object/16 p0, p3

    .line 274
    new-instance v9, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, v10

    move-object v3, v12

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;-><init>(JLjava/lang/Integer;Ljava/lang/Long;ZZZ[B)V

    return-object v9

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;--->createFlagsOrExpiryChange(JLjava/lang/Integer;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createMoveToSecurityTokenChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
    .locals 13

    move-wide/16 v10, p0

    .line 282
    new-instance v9, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, v10

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;-><init>(JLjava/lang/Integer;Ljava/lang/Long;ZZZ[B)V

    return-object v9

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;--->createMoveToSecurityTokenChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRecertifyChange(JZ)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
    .locals 13

    move-wide/16 v10, p0

    move/16 v12, p2

    .line 270
    new-instance v9, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;-><init>(JLjava/lang/Integer;Ljava/lang/Long;ZZZ[B)V

    return-object v9

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;--->createRecertifyChange(JZ)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSecurityTokenSerialNo(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
    .locals 13

    move-wide/16 v10, p0

    move-object/16 v12, p2

    .line 286
    new-instance v9, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-wide v1, v10

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;-><init>(JLjava/lang/Integer;Ljava/lang/Long;ZZZ[B)V

    return-object v9

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;--->createSecurityTokenSerialNo(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createStripChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
    .locals 13

    move-wide/16 v10, p0

    .line 278
    new-instance v9, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, v10

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyChange;-><init>(JLjava/lang/Integer;Ljava/lang/Long;ZZZ[B)V

    return-object v9

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;--->createStripChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getDummyStrip()Z
.end method

.method public abstract getExpiry()Ljava/lang/Long;
.end method

.method public abstract getFlags()Ljava/lang/Integer;
.end method

.method public abstract getMoveKeyToSecurityToken()Z
.end method

.method public abstract getRecertify()Z
.end method

.method public abstract getSecurityTokenSerialNo()[B
.end method

.method public abstract getSubKeyId()J
.end method
