.class final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectByMasterKeyIdQuery"
.end annotation


# instance fields
.field private final master_key_id:Ljava/lang/Long;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/Long;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 287
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;->this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    const-string v5, "SELECT *\n    FROM  autocrypt_peers\n    WHERE master_key_id = ?1"

    .line 288
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autocrypt_peers"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 293
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;->master_key_id:Ljava/lang/Long;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;---><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/Long;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 298
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;->master_key_id:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v5, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-interface {v5, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectByMasterKeyIdQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
