.class public final Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;
.super Ljava/lang/Object;
.source "KeyMetadataModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeyMetadataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/KeyMetadataModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final keyMetadataModelFactory:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;->keyMetadataModelFactory:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyMetadataModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyMetadataModel;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 64
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;->keyMetadataModelFactory:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->creator:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;

    const/4 v1, 0x0

    .line 65
    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    const/4 v4, 0x1

    .line 66
    invoke-interface {v9, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;->keyMetadataModelFactory:Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Factory;->last_updatedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    :goto_1
    const/4 v6, 0x2

    .line 67
    invoke-interface {v9, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 64
    :goto_2
    invoke-interface {v0, v2, v5, v3}, Lorg/sufficientlysecure/keychain/KeyMetadataModel$Creator;->create(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;)Lorg/sufficientlysecure/keychain/KeyMetadataModel;

    move-result-object v9

    return-object v9

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeyMetadataModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/KeyMetadataModel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
