.class public final Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;
.super Lcom/squareup/sqldelight/SqlDelightStatement;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateHasSecretByMasterKeyId"
.end annotation


# instance fields
.field private final keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/KeysModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Lorg/sufficientlysecure/keychain/KeysModel$Factory<",
            "+",
            "Lorg/sufficientlysecure/keychain/KeysModel;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "keys"

    const-string v1, "UPDATE keys\n    SET has_secret = ?2\n    WHERE master_key_id = ?1"

    .line 814
    invoke-interface {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/sqldelight/SqlDelightStatement;-><init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 818
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(JLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-object/16 p0, p3

    const/4 v0, 0x1

    .line 822
    invoke-virtual {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;->bindLong(IJ)V

    .line 823
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;->keysModelFactory:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->has_secretAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v2, p0}, Lcom/squareup/sqldelight/ColumnAdapter;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p0, 0x2

    invoke-virtual {v1, p0, v2, v3}, Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;->bindLong(IJ)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/KeysModel$UpdateHasSecretByMasterKeyId;--->bind(JLorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
