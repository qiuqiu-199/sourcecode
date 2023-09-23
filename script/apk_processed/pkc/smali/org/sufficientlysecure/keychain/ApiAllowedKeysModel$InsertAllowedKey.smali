.class public final Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "ApiAllowedKeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertAllowedKey"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "api_allowed_keys"

    const-string v1, "INSERT OR IGNORE INTO api_allowed_keys (package_name, key_id) VALUES (?, ?)"

    .line 112
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const/4 v0, 0x1

    .line 117
    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x2

    if-nez v4, :cond_0

    .line 119
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;->bindNull(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;->bindLong(IJ)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ApiAllowedKeysModel$InsertAllowedKey;--->bind(Ljava/lang/String;Ljava/lang/Long;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
