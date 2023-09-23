.class final Lcom/squareup/sqldelight/internal/TableSet$TableIterator;
.super Ljava/lang/Object;
.source "TableSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/sqldelight/internal/TableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private final values:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;->values:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;->i:I

    iget-object v1, p0, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;->values:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;->values:[Ljava/lang/String;

    iget v1, p0, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/sqldelight/internal/TableSet$TableIterator;->i:I

    aget-object v0, v0, v1

    return-object v0
.end method
