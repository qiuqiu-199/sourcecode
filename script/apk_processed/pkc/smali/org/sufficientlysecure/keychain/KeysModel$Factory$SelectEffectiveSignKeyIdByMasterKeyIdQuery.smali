.class final Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectEffectiveSignKeyIdByMasterKeyIdQuery"
.end annotation


# instance fields
.field private final master_key_id:J

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/KeysModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-wide/16 v6, p2

    .line 723
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;->this$0:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    const-string v5, "SELECT key_id\n    FROM keys\n    WHERE is_revoked = 0 AND is_secure = 1 AND has_secret > 1 AND ( expiry IS NULL OR expiry >= strftime(\'%s\', \'now\') )\n        AND can_sign = 1 AND master_key_id = ?1"

    .line 724
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "keys"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 730
    iput-wide v6, v4, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;->master_key_id:J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;---><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 735
    iget-wide v0, v3, Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;->master_key_id:J

    const/4 v2, 0x1

    invoke-interface {v4, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Factory$SelectEffectiveSignKeyIdByMasterKeyIdQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
