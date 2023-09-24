.class final Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectUserAttributesByTypeAndMasterKeyIdQuery"
.end annotation


# instance fields
.field private final master_key_id:J

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

.field private final type:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Ljava/lang/Long;J)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-wide/16 p0, p3

    .line 520
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;->this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    const-string v5, "SELECT user_packets.master_key_id, user_packets.rank, attribute_data, is_primary, is_revoked, MIN(certs.verified) AS verified_int\n    FROM user_packets\n        LEFT JOIN certs ON ( user_packets.master_key_id = certs.master_key_id AND user_packets.rank = certs.rank AND certs.verified > 0 )\n    WHERE user_packets.type = ?1 AND user_packets.is_revoked = 0 AND user_packets.master_key_id = ?2\n    GROUP BY user_packets.rank\n    ORDER BY user_packets.rank ASC"

    .line 521
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "user_packets"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "certs"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 529
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;->type:Ljava/lang/Long;

    .line 530
    iput-wide p0, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;->master_key_id:J

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Ljava/lang/Long;J)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 535
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;->type:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v5, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 539
    :cond_0
    invoke-interface {v5, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_0
    const/4 v0, 0x2

    .line 542
    iget-wide v1, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;->master_key_id:J

    invoke-interface {v5, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserAttributesByTypeAndMasterKeyIdQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
