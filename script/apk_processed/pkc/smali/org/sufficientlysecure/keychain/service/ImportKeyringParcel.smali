.class public abstract Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
.super Ljava/lang/Object;
.source "ImportKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFromBytes([B)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 6

    move-object/16 v3, p0

    .line 60
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v3

    .line 61
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2, v1, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;--->createFromBytes([B)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFromFileCache()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 6

    .line 69
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;--->createFromFileCache()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFromFileCacheWithSkipSave()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 7

    .line 65
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;--->createFromFileCacheWithSkipSave()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ")",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 42
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;--->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Z)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Z)",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;--->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Z)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createImportKeyringParcel(Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 6

    move-object/16 v3, p0

    .line 56
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2, v1, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;--->createImportKeyringParcel(Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createWithSkipSave(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ")",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;--->createWithSkipSave(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getKeyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.end method

.method public abstract isForceReinsert()Z
.end method

.method public abstract isSkipSave()Z
.end method
