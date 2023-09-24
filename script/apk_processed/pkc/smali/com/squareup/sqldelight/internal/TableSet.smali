.class public final Lcom/squareup/sqldelight/internal/TableSet;
.super Ljava/util/AbstractSet;
.source "TableSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/sqldelight/internal/TableSet$TableIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final values:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/squareup/sqldelight/internal/TableSet;->values:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/squareup/sqldelight/internal/TableSet;->values:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;

    iget-object v1, p0, Lcom/squareup/sqldelight/internal/TableSet;->values:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/squareup/sqldelight/internal/TableSet;->values:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
