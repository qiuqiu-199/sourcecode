.class Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$1;
.super Ljava/lang/Object;
.source "KeyMetadataModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->selectFingerprintsForKeysOlderThanMapper()Lcom/squareup/sqldelight/RowMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 99
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$1;->this$0:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$1;---><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$1;->map(Landroid/database/Cursor;)[B

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)[B
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 102
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory$1;--->map(Landroid/database/Cursor;)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
