.class final Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectSpecificUserAttributeQuery"
.end annotation


# instance fields
.field private final master_key_id:J

.field private final rank:I

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

.field private final type:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Ljava/lang/Long;JI)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-wide/16 p0, p3

    move/16 p2, p5

    .line 554
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;->this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    const-string v5, "SELECT user_packets.master_key_id, user_packets.rank, attribute_data, is_primary, is_revoked, MIN(certs.verified) AS verified_int\n    FROM user_packets\n        LEFT JOIN certs ON ( user_packets.master_key_id = certs.master_key_id AND user_packets.rank = certs.rank AND certs.verified > 0 )\n    WHERE user_packets.type = ?1 AND user_packets.master_key_id = ?2 AND user_packets.rank = ?3\n    GROUP BY user_packets.master_key_id, user_packets.rank"

    .line 555
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

    .line 562
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;->type:Ljava/lang/Long;

    .line 563
    iput-wide p0, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;->master_key_id:J

    .line 564
    iput p2, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;->rank:I

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;Ljava/lang/Long;JI)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 569
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;->type:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v5, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-interface {v5, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_0
    const/4 v0, 0x2

    .line 576
    iget-wide v1, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;->master_key_id:J

    invoke-interface {v5, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 578
    iget v1, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;->rank:I

    int-to-long v1, v1

    invoke-interface {v5, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectSpecificUserAttributeQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
