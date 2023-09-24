.class public Lorg/apache/james/mime4j/stream/MimeTokenStream;
.super Ljava/lang/Object;
.source "MimeTokenStream.java"


# instance fields
.field private final bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

.field private final config:Lorg/apache/james/mime4j/stream/MimeConfig;

.field private currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

.field private final entities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/james/mime4j/stream/EntityStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

.field private rootentity:Lorg/apache/james/mime4j/stream/MimeEntity;

.field private state:Lorg/apache/james/mime4j/stream/EntityState;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/james/mime4j/stream/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/util/LinkedList;

    .line 87
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    .line 89
    sget-object v0, Lorg/apache/james/mime4j/stream/RecursionMode;->M_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    sget-object p1, Lorg/apache/james/mime4j/stream/MimeConfig;->DEFAULT:Lorg/apache/james/mime4j/stream/MimeConfig;

    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    new-instance p3, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    iget-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 129
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxHeaderLen()I

    move-result p1

    invoke-direct {p3, p1}, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;-><init>(I)V

    :goto_1
    iput-object p3, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 130
    :cond_2
    iget-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 131
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_2

    :cond_3
    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_2
    iput-object p2, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz p4, :cond_4

    goto :goto_3

    .line 132
    :cond_4
    new-instance p4, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    invoke-direct {p4}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;-><init>()V

    :goto_3
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    return-void
.end method

.method private doParse(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/EntityState;)V
    .locals 14

    move-object v0, p0

    .line 182
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->isCountLineNumbers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v4, Lorg/apache/james/mime4j/io/LineNumberInputStream;

    move-object v1, p1

    invoke-direct {v4, v1}, Lorg/apache/james/mime4j/io/LineNumberInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    new-instance v1, Lorg/apache/james/mime4j/stream/MimeEntity;

    iget-object v5, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    sget-object v7, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v8, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    iget-object v9, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    iget-object v10, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    move-object v2, v1

    move-object v3, v4

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v10}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    iput-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->rootentity:Lorg/apache/james/mime4j/stream/MimeEntity;

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 194
    new-instance v2, Lorg/apache/james/mime4j/stream/MimeEntity;

    const/4 v6, 0x0

    iget-object v8, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    sget-object v10, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v11, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    iget-object v12, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    iget-object v13, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    move-object v5, v2

    move-object v7, v1

    move-object/from16 v9, p2

    invoke-direct/range {v5 .. v13}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    iput-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->rootentity:Lorg/apache/james/mime4j/stream/MimeEntity;

    .line 205
    :goto_0
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->rootentity:Lorg/apache/james/mime4j/stream/MimeEntity;

    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->setRecursionMode(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    .line 206
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->rootentity:Lorg/apache/james/mime4j/stream/MimeEntity;

    iput-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 207
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 208
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/util/LinkedList;

    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    return-void
.end method


# virtual methods
.method public getBodyDescriptor()Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getBodyDescriptor()Lorg/apache/james/mime4j/stream/BodyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/james/mime4j/stream/MimeConfig;
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    return-object v0
.end method

.method public getDecodedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getDecodedContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/james/mime4j/stream/Field;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getField()Lorg/apache/james/mime4j/stream/Field;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lorg/apache/james/mime4j/stream/EntityState;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0
.end method

.method public next()Lorg/apache/james/mime4j/stream/EntityState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    if-nez v0, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->advance()Lorg/apache/james/mime4j/stream/EntityStateMachine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 371
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 373
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    .line 374
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    if-eq v0, v1, :cond_2

    .line 375
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0

    .line 377
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 382
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->setRecursionMode(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    goto :goto_0

    .line 385
    :cond_4
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    .line 386
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0

    .line 365
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more tokens are available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1

    .line 141
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->doParse(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/EntityState;)V

    return-void
.end method

.method public parseHeadless(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;
    .locals 2

    if-nez p2, :cond_0

    .line 156
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content type may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/stream/RawField;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    invoke-interface {p2, v0}, Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;->addField(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object p2
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p2, :cond_1

    move-object p2, v0

    .line 168
    :cond_1
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->doParse(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/EntityState;)V

    .line 170
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->next()Lorg/apache/james/mime4j/stream/EntityState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 176
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 173
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 165
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/MimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRecursionMode(Lorg/apache/james/mime4j/stream/RecursionMode;)V
    .locals 1

    .line 248
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    .line 249
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/stream/EntityStateMachine;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->setRecursionMode(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->rootentity:Lorg/apache/james/mime4j/stream/MimeEntity;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->stop()V

    return-void
.end method
