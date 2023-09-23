.class final Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectUserIdsByMasterKeyIdQuery"
.end annotation


# instance fields
.field private final master_key_id:[J

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;[J)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 454
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;->this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT user_packets.master_key_id, user_packets.rank, user_id, name, email, comment, is_primary, is_revoked, MIN(certs.verified) AS verified_int\n    FROM user_packets\n        LEFT JOIN certs ON ( user_packets.master_key_id = certs.master_key_id AND user_packets.rank = certs.rank AND certs.verified > 0 )\n    WHERE user_packets.type IS NULL AND user_packets.is_revoked = 0 AND user_packets.master_key_id IN "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v6

    .line 458
    invoke-static {v0}, Lcom/squareup/sqldelight/internal/QuestionMarks;->ofSize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    GROUP BY user_packets.master_key_id, user_packets.rank\n    ORDER BY user_packets.master_key_id ASC,user_packets.rank ASC"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

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

    .line 455
    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 463
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;->master_key_id:[J

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;[J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 470
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;->master_key_id:[J

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    add-int/lit8 v6, v2, 0x1

    .line 471
    invoke-interface {v8, v2, v4, v5}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdsByMasterKeyIdQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
