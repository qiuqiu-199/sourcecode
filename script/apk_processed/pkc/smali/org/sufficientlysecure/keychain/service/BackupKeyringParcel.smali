.class public abstract Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;
.super Ljava/lang/Object;
.source "BackupKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create([JZZZLandroid/net/Uri;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;
    .locals 12

    move-object/16 v9, p0

    move/16 v10, p1

    move/16 v11, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 46
    new-instance v8, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v4, v11

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;-><init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V

    return-object v8

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;--->create([JZZZLandroid/net/Uri;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create([JZZZLandroid/net/Uri;Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZZZ",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;"
        }
    .end annotation

    move-object/16 v9, p0

    move/16 v10, p1

    move/16 v11, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 52
    new-instance v8, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v4, v11

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;-><init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V

    return-object v8

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;--->create([JZZZLandroid/net/Uri;Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createExportAutocryptSetupMessage([JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;"
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 58
    new-instance v8, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;-><init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V

    return-object v8

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;--->createExportAutocryptSetupMessage([JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getEnableAsciiArmorOutput()Z
.end method

.method public abstract getExportPublic()Z
.end method

.method public abstract getExportSecret()Z
.end method

.method public abstract getExtraHeaders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsEncrypted()Z
.end method

.method public abstract getMasterKeyIds()[J
.end method

.method public abstract getOutputUri()Landroid/net/Uri;
.end method
