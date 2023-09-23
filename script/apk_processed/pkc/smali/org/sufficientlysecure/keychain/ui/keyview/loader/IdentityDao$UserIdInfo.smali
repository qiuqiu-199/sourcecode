.class public abstract Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;
.super Ljava/lang/Object;
.source "IdentityDao.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserIdInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 198
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static create(JIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;
    .locals 13

    move-wide/16 v10, p0

    move/16 v12, p2

    move/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 213
    new-instance v9, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;

    move-object v0, v9

    move-wide v1, v10

    move v3, v12

    move v4, p0

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_UserIdInfo;-><init>(JIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;--->create(JIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getMasterKeyId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRank()I
.end method

.method public abstract isPrimary()Z
.end method

.method public abstract isVerified()Z
.end method
