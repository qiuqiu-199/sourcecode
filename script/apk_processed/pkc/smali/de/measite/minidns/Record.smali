.class public Lde/measite/minidns/Record;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/measite/minidns/Record$CLASS;,
        Lde/measite/minidns/Record$TYPE;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected clazz:Lde/measite/minidns/Record$CLASS;

.field protected name:Ljava/lang/String;

.field protected payloadData:Lde/measite/minidns/record/Data;

.field protected ttl:J

.field protected type:Lde/measite/minidns/Record$TYPE;

.field protected unicastQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lde/measite/minidns/Client;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/measite/minidns/Record;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Lde/measite/minidns/record/Data;
    .locals 1

    .line 332
    iget-object v0, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    return-object v0
.end method

.method public isAnswer(Lde/measite/minidns/Question;)Z
    .locals 2

    .line 306
    invoke-virtual {p1}, Lde/measite/minidns/Question;->getType()Lde/measite/minidns/Record$TYPE;

    move-result-object v0

    iget-object v1, p0, Lde/measite/minidns/Record;->type:Lde/measite/minidns/Record$TYPE;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lde/measite/minidns/Question;->getType()Lde/measite/minidns/Record$TYPE;

    move-result-object v0

    sget-object v1, Lde/measite/minidns/Record$TYPE;->ANY:Lde/measite/minidns/Record$TYPE;

    if-ne v0, v1, :cond_2

    .line 307
    :cond_0
    invoke-virtual {p1}, Lde/measite/minidns/Question;->getClazz()Lde/measite/minidns/Record$CLASS;

    move-result-object v0

    iget-object v1, p0, Lde/measite/minidns/Record;->clazz:Lde/measite/minidns/Record$CLASS;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lde/measite/minidns/Question;->getClazz()Lde/measite/minidns/Record$CLASS;

    move-result-object v0

    sget-object v1, Lde/measite/minidns/Record$CLASS;->ANY:Lde/measite/minidns/Record$CLASS;

    if-ne v0, v1, :cond_2

    .line 308
    :cond_1
    invoke-virtual {p1}, Lde/measite/minidns/Question;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lde/measite/minidns/Record;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parse(Ljava/io/DataInputStream;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-static {p1, p2}, Lde/measite/minidns/util/NameUtil;->parse(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/measite/minidns/Record;->name:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lde/measite/minidns/Record$TYPE;->getType(I)Lde/measite/minidns/Record$TYPE;

    move-result-object v0

    iput-object v0, p0, Lde/measite/minidns/Record;->type:Lde/measite/minidns/Record$TYPE;

    .line 244
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v1, v0, 0x7fff

    .line 245
    invoke-static {v1}, Lde/measite/minidns/Record$CLASS;->getClass(I)Lde/measite/minidns/Record$CLASS;

    move-result-object v1

    iput-object v1, p0, Lde/measite/minidns/Record;->clazz:Lde/measite/minidns/Record$CLASS;

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 246
    :goto_0
    iput-boolean v1, p0, Lde/measite/minidns/Record;->unicastQuery:Z

    .line 247
    iget-object v1, p0, Lde/measite/minidns/Record;->clazz:Lde/measite/minidns/Record$CLASS;

    if-nez v1, :cond_1

    .line 248
    sget-object v1, Lde/measite/minidns/Record;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 250
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    const/16 v3, 0x20

    shl-long/2addr v0, v3

    .line 251
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v3, v3

    add-long v5, v0, v3

    iput-wide v5, p0, Lde/measite/minidns/Record;->ttl:J

    .line 252
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 253
    sget-object v1, Lde/measite/minidns/Record$1;->$SwitchMap$de$measite$minidns$Record$TYPE:[I

    iget-object v3, p0, Lde/measite/minidns/Record;->type:Lde/measite/minidns/Record$TYPE;

    invoke-virtual {v3}, Lde/measite/minidns/Record$TYPE;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 276
    sget-object v1, Lde/measite/minidns/Record;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unparsed type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lde/measite/minidns/Record;->type:Lde/measite/minidns/Record$TYPE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 277
    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_1

    .line 273
    :pswitch_0
    new-instance v1, Lde/measite/minidns/record/TXT;

    invoke-direct {v1}, Lde/measite/minidns/record/TXT;-><init>()V

    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_2

    .line 270
    :pswitch_1
    new-instance v1, Lde/measite/minidns/record/PTR;

    invoke-direct {v1}, Lde/measite/minidns/record/PTR;-><init>()V

    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_2

    .line 267
    :pswitch_2
    new-instance v1, Lde/measite/minidns/record/CNAME;

    invoke-direct {v1}, Lde/measite/minidns/record/CNAME;-><init>()V

    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_2

    .line 264
    :pswitch_3
    new-instance v1, Lde/measite/minidns/record/NS;

    invoke-direct {v1}, Lde/measite/minidns/record/NS;-><init>()V

    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_2

    .line 261
    :pswitch_4
    new-instance v1, Lde/measite/minidns/record/A;

    invoke-direct {v1}, Lde/measite/minidns/record/A;-><init>()V

    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_2

    .line 258
    :pswitch_5
    new-instance v1, Lde/measite/minidns/record/AAAA;

    invoke-direct {v1}, Lde/measite/minidns/record/AAAA;-><init>()V

    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_2

    .line 255
    :pswitch_6
    new-instance v1, Lde/measite/minidns/record/SRV;

    invoke-direct {v1}, Lde/measite/minidns/record/SRV;-><init>()V

    iput-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    goto :goto_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 279
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 283
    :cond_2
    :goto_2
    iget-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    if-eqz v1, :cond_3

    .line 284
    iget-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    invoke-interface {v1, p1, p2, v0}, Lde/measite/minidns/record/Data;->parse(Ljava/io/DataInputStream;[BI)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 294
    iget-object v0, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Record;->type:Lde/measite/minidns/Record$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Record;->clazz:Lde/measite/minidns/Record$CLASS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Record;->type:Lde/measite/minidns/Record$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Record;->clazz:Lde/measite/minidns/Record$CLASS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/Record;->payloadData:Lde/measite/minidns/record/Data;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
