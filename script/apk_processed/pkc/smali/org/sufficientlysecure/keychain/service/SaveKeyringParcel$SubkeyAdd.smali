.class public abstract Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;
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
    name = "SubkeyAdd"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 232
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 244
    new-instance v6, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel_SubkeyAdd;-><init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)V

    return-object v6

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;--->createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;
.end method

.method public abstract getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;
.end method

.method public abstract getExpiry()Ljava/lang/Long;
.end method

.method public abstract getFlags()I
.end method

.method public abstract getKeySize()Ljava/lang/Integer;
.end method
