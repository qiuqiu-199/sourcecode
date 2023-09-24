.class public Lde/measite/minidns/Question;
.super Ljava/lang/Object;
.source "Question.java"


# instance fields
.field private byteArray:[B

.field private final clazz:Lde/measite/minidns/Record$CLASS;

.field private final name:Ljava/lang/String;

.field private final type:Lde/measite/minidns/Record$TYPE;

.field private final unicastQuery:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;)V
    .locals 1

    .line 72
    sget-object v0, Lde/measite/minidns/Record$CLASS;->IN:Lde/measite/minidns/Record$CLASS;

    invoke-direct {p0, p1, p2, v0}, Lde/measite/minidns/Question;-><init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;Lde/measite/minidns/Record$CLASS;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;Lde/measite/minidns/Record$CLASS;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lde/measite/minidns/Question;-><init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;Lde/measite/minidns/Record$CLASS;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;Lde/measite/minidns/Record$CLASS;Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lde/measite/minidns/Question;->name:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lde/measite/minidns/Question;->type:Lde/measite/minidns/Record$TYPE;

    .line 52
    iput-object p3, p0, Lde/measite/minidns/Question;->clazz:Lde/measite/minidns/Record$CLASS;

    .line 53
    iput-boolean p4, p0, Lde/measite/minidns/Question;->unicastQuery:Z

    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lde/measite/minidns/Question;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lde/measite/minidns/util/NameUtil;->parse(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lde/measite/minidns/Record$TYPE;->getType(I)Lde/measite/minidns/Record$TYPE;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p0

    invoke-static {p0}, Lde/measite/minidns/Record$CLASS;->getClass(I)Lde/measite/minidns/Record$CLASS;

    move-result-object p0

    .line 110
    new-instance v1, Lde/measite/minidns/Question;

    invoke-direct {v1, p1, v0, p0}, Lde/measite/minidns/Question;-><init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;Lde/measite/minidns/Record$CLASS;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    instance-of v0, p1, Lde/measite/minidns/Question;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_1
    invoke-virtual {p0}, Lde/measite/minidns/Question;->toByteArray()[B

    move-result-object v0

    .line 150
    check-cast p1, Lde/measite/minidns/Question;

    invoke-virtual {p1}, Lde/measite/minidns/Question;->toByteArray()[B

    move-result-object p1

    .line 151
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getClazz()Lde/measite/minidns/Record$CLASS;
    .locals 1

    .line 88
    iget-object v0, p0, Lde/measite/minidns/Question;->clazz:Lde/measite/minidns/Record$CLASS;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lde/measite/minidns/Question;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lde/measite/minidns/Record$TYPE;
    .locals 1

    .line 80
    iget-object v0, p0, Lde/measite/minidns/Question;->type:Lde/measite/minidns/Record$TYPE;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 138
    invoke-virtual {p0}, Lde/measite/minidns/Question;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 118
    iget-object v0, p0, Lde/measite/minidns/Question;->byteArray:[B

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 120
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    :try_start_0
    iget-object v2, p0, Lde/measite/minidns/Question;->name:Ljava/lang/String;

    invoke-static {v2}, Lde/measite/minidns/util/NameUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 124
    iget-object v2, p0, Lde/measite/minidns/Question;->type:Lde/measite/minidns/Record$TYPE;

    invoke-virtual {v2}, Lde/measite/minidns/Record$TYPE;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 125
    iget-object v2, p0, Lde/measite/minidns/Question;->clazz:Lde/measite/minidns/Record$CLASS;

    invoke-virtual {v2}, Lde/measite/minidns/Record$CLASS;->getValue()I

    move-result v2

    iget-boolean v3, p0, Lde/measite/minidns/Question;->unicastQuery:Z

    if-eqz v3, :cond_0

    const v3, 0x8000

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lde/measite/minidns/Question;->byteArray:[B

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :cond_1
    :goto_1
    iget-object v0, p0, Lde/measite/minidns/Question;->byteArray:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Question/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Question;->clazz:Lde/measite/minidns/Record$CLASS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Question;->type:Lde/measite/minidns/Record$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Question;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
