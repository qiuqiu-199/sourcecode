.class public abstract Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;
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
    name = "AutocryptPeerInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 232
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static create(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;
    .locals 15

    move-wide/16 v12, p0

    move-object/16 v14, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 254
    new-instance v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-wide v1, v12

    move-object v6, v14

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;-><init>(JIZZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;Landroid/content/Intent;)V

    return-object v11

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;--->create(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static create(JLorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;
    .locals 15

    move-wide/16 v12, p0

    move-object/16 v14, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 249
    new-instance v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getRank()I

    move-result v3

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->isVerified()Z

    move-result v4

    .line 250
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->isPrimary()Z

    move-result v5

    move-object v0, v11

    move-wide v1, v12

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v14

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AutoValue_IdentityDao_AutocryptPeerInfo;-><init>(JIZZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;Landroid/content/Intent;)V

    return-object v11

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;--->create(JLorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAppIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAutocryptPeerIntent()Landroid/content/Intent;
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public abstract getMasterKeyId()J
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getRank()I
.end method

.method public abstract getUserIdInfo()Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;
.end method

.method public abstract isPrimary()Z
.end method

.method public abstract isVerified()Z
.end method
