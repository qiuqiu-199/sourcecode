.class public Lcom/squareup/sqldelight/SqlDelightQuery;
.super Ljava/lang/Object;
.source "SqlDelightQuery.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteQuery;


# instance fields
.field private final sql:Ljava/lang/String;

.field private final tables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/squareup/sqldelight/SqlDelightQuery;->sql:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/squareup/sqldelight/SqlDelightQuery;->tables:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 0

    return-void
.end method

.method public final getSql()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightQuery;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public final getTables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/squareup/sqldelight/SqlDelightQuery;->tables:Ljava/util/Set;

    return-object v0
.end method
