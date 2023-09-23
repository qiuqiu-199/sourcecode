.class public abstract Lcom/squareup/sqldelight/SqlDelightStatement;
.super Ljava/lang/Object;
.source "SqlDelightStatement.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteStatement;


# instance fields
.field private final program:Landroid/arch/persistence/db/SupportSQLiteStatement;

.field private final table:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteStatement;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->table:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    return-void
.end method


# virtual methods
.method public final bindBlob(I[B)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public final bindDouble(ID)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public final bindLong(IJ)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public final bindNull(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public final bindString(ILjava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public final clearBindings()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->clearBindings()V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->close()V

    return-void
.end method

.method public final execute()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->execute()V

    return-void
.end method

.method public final executeInsert()J
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final executeUpdateDelete()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method public final getTable()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->table:Ljava/lang/String;

    return-object v0
.end method

.method public final simpleQueryForLong()J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final simpleQueryForString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightStatement;->program:Landroid/arch/persistence/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
