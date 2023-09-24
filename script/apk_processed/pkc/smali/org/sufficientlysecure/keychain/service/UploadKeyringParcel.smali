.class public abstract Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;
.super Ljava/lang/Object;
.source "UploadKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createWithKeyId(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;J)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 40
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;-><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;--->createWithKeyId(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;J)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createWithKeyringBytes(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;[B)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 45
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;-><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;--->createWithKeyringBytes(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;[B)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.end method

.method public abstract getMasterKeyId()Ljava/lang/Long;
.end method

.method public abstract getUncachedKeyringBytes()[B
.end method
