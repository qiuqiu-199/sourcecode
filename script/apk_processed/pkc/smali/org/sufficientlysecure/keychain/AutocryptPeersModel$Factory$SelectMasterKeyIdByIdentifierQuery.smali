.class final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectMasterKeyIdByIdentifierQuery"
.end annotation


# instance fields
.field private final identifier:Ljava/lang/String;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/String;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 311
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;->this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    const-string v5, "SELECT master_key_id\n    FROM autocrypt_peers\n    WHERE identifier = ?1"

    .line 312
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autocrypt_peers"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 317
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;->identifier:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;---><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 322
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;->identifier:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v3, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$SelectMasterKeyIdByIdentifierQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
