.class public Lorg/markdown4j/Markdown4jProcessor;
.super Ljava/lang/Object;
.source "Markdown4jProcessor.java"


# instance fields
.field private builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

.field private decorator:Lorg/markdown4j/ExtDecorator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Lorg/markdown4j/Markdown4jProcessor;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

    return-void
.end method

.method private builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 4

    .line 23
    new-instance v0, Lorg/markdown4j/ExtDecorator;

    invoke-direct {v0}, Lorg/markdown4j/ExtDecorator;-><init>()V

    iput-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->decorator:Lorg/markdown4j/ExtDecorator;

    .line 24
    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtentedProfile()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/markdown4j/Plugin;

    new-instance v2, Lorg/markdown4j/YumlPlugin;

    invoke-direct {v2}, Lorg/markdown4j/YumlPlugin;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/markdown4j/WebSequencePlugin;

    invoke-direct {v2}, Lorg/markdown4j/WebSequencePlugin;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/markdown4j/IncludePlugin;

    invoke-direct {v2}, Lorg/markdown4j/IncludePlugin;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->registerPlugins([Lorg/markdown4j/Plugin;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/markdown4j/Markdown4jProcessor;->decorator:Lorg/markdown4j/ExtDecorator;

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    new-instance v1, Lorg/markdown4j/CodeBlockEmitter;

    invoke-direct {v1}, Lorg/markdown4j/CodeBlockEmitter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setCodeBlockEmitter(Lcom/github/rjeschke/txtmark/BlockEmitter;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public process(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
