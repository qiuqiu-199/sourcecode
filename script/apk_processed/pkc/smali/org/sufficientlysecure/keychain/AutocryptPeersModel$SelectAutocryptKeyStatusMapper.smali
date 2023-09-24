.class public final Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;
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
    name = "SelectAutocryptKeyStatusMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Lorg/sufficientlysecure/keychain/AutocryptPeersModel;",
        "T::",
        "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel<",
        "TT1;>;>",
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
            "TT1;>;"
        }
    .end annotation
.end field

.field private final creator:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator<",
            "TT1;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator<",
            "TT1;TT;>;",
            "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory<",
            "TT1;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 125
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->creator:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;

    .line 127
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;---><init>(Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v19, p0

    move-object/16 v20, p1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    .line 133
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->creator:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v4, v3, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->creator:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;

    const/4 v3, 0x0

    .line 135
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    .line 136
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 137
    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->last_seenAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    :goto_0
    const/4 v8, 0x3

    .line 138
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    iget-object v9, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v9, v9, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v9, v8}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    :goto_1
    const/4 v9, 0x4

    .line 139
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v14, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x5

    .line 140
    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_3
    const/4 v11, 0x6

    .line 141
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_4
    const/4 v12, 0x7

    .line 142
    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    iget-object v13, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v13, v13, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->gossip_last_seen_keyAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v13, v12}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Date;

    :goto_5
    const/16 v13, 0x8

    .line 143
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v17, v4

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    iget-object v14, v0, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;->autocryptPeersModelFactory:Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;

    iget-object v14, v14, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Factory;->gossip_originAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    move-object/from16 v17, v4

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v3}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-object v13, v3

    :goto_6
    move-object/from16 v4, v17

    .line 134
    invoke-interface/range {v4 .. v13}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$Creator;->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel;

    move-result-object v3

    const/16 v4, 0x9

    .line 145
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v6, 0xa

    .line 146
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/16 v8, 0xb

    .line 147
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_8
    const/16 v10, 0xc

    .line 148
    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v16, 0x0

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v9, :cond_a

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v16, v9

    :goto_a
    const/16 v9, 0xd

    .line 149
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/16 v11, 0xe

    .line 150
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v8

    move-object/from16 v8, v16

    .line 133
    invoke-interface/range {v1 .. v12}, Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusCreator;->create(Lorg/sufficientlysecure/keychain/AutocryptPeersModel;JJLjava/lang/Boolean;Ljava/lang/Boolean;JJ)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;

    move-result-object v1

    return-object v1

    const-string v21, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusMapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
