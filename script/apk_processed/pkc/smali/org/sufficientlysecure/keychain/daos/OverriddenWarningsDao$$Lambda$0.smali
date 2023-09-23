.class final synthetic Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# instance fields
.field private final arg$1:Lcom/squareup/sqldelight/RowMapper;


# direct methods
.method private constructor <init>(Lcom/squareup/sqldelight/RowMapper;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;->arg$1:Lcom/squareup/sqldelight/RowMapper;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;---><init>(Lcom/squareup/sqldelight/RowMapper;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static get$Lambda(Lcom/squareup/sqldelight/RowMapper;)Lcom/squareup/sqldelight/RowMapper;
    .locals 4

    move-object/16 v1, p0

    new-instance v0, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;-><init>(Lcom/squareup/sqldelight/RowMapper;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;--->get$Lambda(Lcom/squareup/sqldelight/RowMapper;)Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;->arg$1:Lcom/squareup/sqldelight/RowMapper;

    invoke-interface {v0, v2}, Lcom/squareup/sqldelight/RowMapper;->map(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao$$Lambda$0;--->map(Landroid/database/Cursor;)Ljava/lang/Object;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
