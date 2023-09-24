.class Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$1;
.super Ljava/lang/Object;
.source "AutocryptPeersModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->selectMasterKeyIdByIdentifierMapper()Lcom/squareup/sqldelight/RowMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 240
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$1;->this$0:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$1;---><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public map(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/4 v0, 0x0

    .line 243
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_0
    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$1;--->map(Landroid/database/Cursor;)Ljava/lang/Long;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory$1;->map(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
