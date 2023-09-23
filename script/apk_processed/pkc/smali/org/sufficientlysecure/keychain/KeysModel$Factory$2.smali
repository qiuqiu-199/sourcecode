.class Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;
.super Ljava/lang/Object;
.source "KeysModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/KeysModel$Factory;->selectSecretKeyTypeMapper()Lcom/squareup/sqldelight/RowMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/KeysModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 550
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;->this$0:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;---><init>(Lorg/sufficientlysecure/keychain/KeysModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 550
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 553
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;->this$0:Lorg/sufficientlysecure/keychain/KeysModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/KeysModel$Factory;->has_secretAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeysModel$Factory$2;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
