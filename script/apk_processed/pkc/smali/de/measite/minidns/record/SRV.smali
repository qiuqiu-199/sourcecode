.class public Lde/measite/minidns/record/SRV;
.super Ljava/lang/Object;
.source "SRV.java"

# interfaces
.implements Lde/measite/minidns/record/Data;


# instance fields
.field protected name:Ljava/lang/String;

.field protected port:I

.field protected priority:I

.field protected weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lde/measite/minidns/record/SRV;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 72
    iget v0, p0, Lde/measite/minidns/record/SRV;->port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 39
    iget v0, p0, Lde/measite/minidns/record/SRV;->priority:I

    return v0
.end method

.method public getType()Lde/measite/minidns/Record$TYPE;
    .locals 1

    .line 121
    sget-object v0, Lde/measite/minidns/Record$TYPE;->SRV:Lde/measite/minidns/Record$TYPE;

    return-object v0
.end method

.method public parse(Ljava/io/DataInputStream;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p3

    iput p3, p0, Lde/measite/minidns/record/SRV;->priority:I

    .line 109
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p3

    iput p3, p0, Lde/measite/minidns/record/SRV;->weight:I

    .line 110
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p3

    iput p3, p0, Lde/measite/minidns/record/SRV;->port:I

    .line 111
    invoke-static {p1, p2}, Lde/measite/minidns/util/NameUtil;->parse(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/measite/minidns/record/SRV;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SRV "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/record/SRV;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/measite/minidns/record/SRV;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/measite/minidns/record/SRV;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/measite/minidns/record/SRV;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
