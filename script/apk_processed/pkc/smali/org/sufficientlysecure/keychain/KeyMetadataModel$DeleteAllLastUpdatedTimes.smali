.class public final Lorg/sufficientlysecure/keychain/KeyMetadataModel$DeleteAllLastUpdatedTimes;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "KeyMetadataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyMetadataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteAllLastUpdatedTimes"
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "key_metadata"

    const-string v1, "UPDATE key_metadata\n    SET last_updated = null, seen_on_keyservers = null"

    .line 159
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$DeleteAllLastUpdatedTimes;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
