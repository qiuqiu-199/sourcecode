.class final synthetic Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# static fields
.field static final $instance:Lcom/squareup/sqldelight/RowMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;->$instance:Lcom/squareup/sqldelight/RowMapper;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->lambda$getConfirmedUserIds$0$KeyRepository(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyRepository$$Lambda$0;--->map(Landroid/database/Cursor;)Ljava/lang/Object;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
