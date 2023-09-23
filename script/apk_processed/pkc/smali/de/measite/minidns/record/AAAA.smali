.class public Lde/measite/minidns/record/AAAA;
.super Ljava/lang/Object;
.source "AAAA.java"

# interfaces
.implements Lde/measite/minidns/record/Data;


# instance fields
.field private ip:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lde/measite/minidns/Record$TYPE;
    .locals 1

    .line 20
    sget-object v0, Lde/measite/minidns/Record$TYPE;->AAAA:Lde/measite/minidns/Record$TYPE;

    return-object v0
.end method

.method public parse(Ljava/io/DataInputStream;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x10

    .line 31
    new-array p2, p2, [B

    iput-object p2, p0, Lde/measite/minidns/record/AAAA;->ip:[B

    .line 32
    iget-object p2, p0, Lde/measite/minidns/record/AAAA;->ip:[B

    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lde/measite/minidns/record/AAAA;->ip:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x3a

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    iget-object v2, p0, Lde/measite/minidns/record/AAAA;->ip:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lde/measite/minidns/record/AAAA;->ip:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
