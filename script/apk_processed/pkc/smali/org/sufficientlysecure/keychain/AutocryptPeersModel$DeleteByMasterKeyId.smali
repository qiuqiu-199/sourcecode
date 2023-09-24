.class public final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteByMasterKeyId"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "autocrypt_peers"

    const-string v1, "DELETE FROM autocrypt_peers\n    WHERE master_key_id = ?"

    .line 379
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Ljava/lang/Long;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x1

    if-nez v4, :cond_0

    .line 386
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;->bindNull(I)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;->bindLong(IJ)V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$DeleteByMasterKeyId;--->bind(Ljava/lang/Long;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
