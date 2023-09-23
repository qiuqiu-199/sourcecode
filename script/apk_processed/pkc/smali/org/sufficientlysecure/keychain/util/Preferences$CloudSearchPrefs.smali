.class public abstract Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/util/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CloudSearchPrefs"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 388
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
    .locals 10

    move/16 v7, p0

    move/16 v8, p1

    move/16 v9, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 407
    new-instance v6, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;

    move-object v0, v6

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;-><init>(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-object v6

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;--->create(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createKeyserverOnly(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 419
    invoke-static {v1, v0, v0, v0, v2}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->create(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;--->createKeyserverOnly(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSocialOnly()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 423
    invoke-static {v1, v0, v0, v1, v2}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->create(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;--->createSocialOnly()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createWebKeyDirectoryOnly()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    invoke-static {v0, v0, v0, v1, v2}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->create(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;--->createWebKeyDirectoryOnly()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.end method

.method public abstract isFacebookEnabled()Z
.end method

.method public abstract isKeybaseEnabled()Z
.end method

.method public abstract isKeyserverEnabled()Z
.end method

.method public abstract isWebKeyDirectoryEnabled()Z
.end method
