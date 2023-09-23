.class public final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;
.super Ljava/lang/Object;
.source "AutocryptPeersModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/AutocryptPeersModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 165
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v13, p0

    move-object/16 v14, p1

    .line 171
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v1, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->creator:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;

    const/4 v0, 0x0

    .line 172
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 173
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 174
    invoke-interface {v14, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    iget-object v6, v13, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->last_seenAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    :goto_0
    const/4 v6, 0x3

    .line 175
    invoke-interface {v14, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v6, v7

    goto :goto_1

    :cond_1
    iget-object v8, v13, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    :goto_1
    const/4 v8, 0x4

    .line 176
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v3, 0x5

    .line 177
    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v7

    goto :goto_2

    :cond_3
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v8, v3

    :goto_2
    const/4 v3, 0x6

    .line 178
    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v7

    goto :goto_3

    :cond_4
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v9, v3

    :goto_3
    const/4 v3, 0x7

    .line 179
    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v7

    goto :goto_4

    :cond_5
    iget-object v10, v13, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v10, v10, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->gossip_last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v3}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    move-object v10, v3

    :goto_4
    const/16 v3, 0x8

    .line 180
    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v14, v7

    goto :goto_5

    :cond_6
    iget-object v7, v13, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v7, v7, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->gossip_originAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v7, v14}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    :goto_5
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v14

    .line 171
    invoke-interface/range {v1 .. v10}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v14

    return-object v14

    const-string v15, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
