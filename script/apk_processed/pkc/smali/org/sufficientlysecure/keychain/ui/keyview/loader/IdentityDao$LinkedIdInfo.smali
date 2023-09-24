.class public abstract Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;
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
    name = "LinkedIdInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 218
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static create(JIZZLorg/sufficientlysecure/keychain/linked/LinkedAttribute;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;
    .locals 11

    move-wide/16 v8, p0

    move/16 v10, p2

    move/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    .line 227
    new-instance v7, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;

    move-object v0, v7

    move-wide v1, v8

    move v3, v10

    move v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_LinkedIdInfo;-><init>(JIZZLorg/sufficientlysecure/keychain/linked/LinkedAttribute;)V

    return-object v7

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;--->create(JIZZLorg/sufficientlysecure/keychain/linked/LinkedAttribute;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getLinkedAttribute()Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;
.end method

.method public abstract getMasterKeyId()J
.end method

.method public abstract getRank()I
.end method

.method public abstract isPrimary()Z
.end method

.method public abstract isVerified()Z
.end method
