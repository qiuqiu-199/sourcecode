.class final Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "KeyMetadataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectFingerprintsForKeysOlderThanQuery"
.end annotation


# instance fields
.field private final last_updated:Ljava/util/Date;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;Ljava/util/Date;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 135
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;->this$0:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    const-string v5, "SELECT fingerprint\n    FROM keys\n        LEFT JOIN key_metadata USING (master_key_id)\n    WHERE rank = 0 AND (last_updated IS NULL OR last_updated < ?1)"

    .line 136
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "keys"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "key_metadata"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 142
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;->last_updated:Ljava/util/Date;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;---><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;Ljava/util/Date;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 147
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;->last_updated:Ljava/util/Date;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 149
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;->this$0:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->last_updatedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v2, v0}, Lcom/squareup/sqldelight/ColumnAdapter;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v5, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v5, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$SelectFingerprintsForKeysOlderThanQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
