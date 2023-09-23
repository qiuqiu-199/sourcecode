.class final Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;
.super Lcom/squareup/sqldelight/SqlDelightQuery;
.source "UserPacketsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectUserIdStatusByEmailQuery"
.end annotation


# instance fields
.field private final email:[Ljava/lang/String;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;[Ljava/lang/String;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 586
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;->this$0:Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT *\nFROM uidStatus\n    WHERE email IN "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v6

    .line 589
    invoke-static {v0}, Lcom/squareup/sqldelight/internal/QuestionMarks;->ofSize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "user_packets"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "keys"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "certs"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    .line 587
    invoke-direct {v4, v5, v0}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 592
    iput-object v6, v4, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;->email:[Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;---><init>(Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory;[Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 599
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;->email:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 601
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    add-int/lit8 v5, v1, 0x1

    .line 602
    invoke-interface {v7, v1, v4}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 605
    :cond_0
    invoke-interface {v7, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    :cond_1
    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/UserPacketsModel$Factory$SelectUserIdStatusByEmailQuery;--->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
