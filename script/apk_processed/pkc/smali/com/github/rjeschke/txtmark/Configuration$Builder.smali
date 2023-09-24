.class public Lcom/github/rjeschke/txtmark/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rjeschke/txtmark/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

.field private convertNewline2Br:Z

.field private decorator:Lcom/github/rjeschke/txtmark/Decorator;

.field private encoding:Ljava/lang/String;

.field private forceExtendedProfile:Z

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/markdown4j/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private safeMode:Z

.field private specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->safeMode:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtendedProfile:Z

    .line 122
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br:Z

    const-string v0, "UTF-8"

    .line 124
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->encoding:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/github/rjeschke/txtmark/DefaultDecorator;

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/DefaultDecorator;-><init>()V

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    .line 130
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->plugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/github/rjeschke/txtmark/Configuration;
    .locals 10

    .line 284
    new-instance v9, Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->safeMode:Z

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->encoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    iget-object v4, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    iget-boolean v5, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtendedProfile:Z

    iget-boolean v6, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br:Z

    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    iget-object v8, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->plugins:Ljava/util/List;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/github/rjeschke/txtmark/Configuration;-><init>(ZLjava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;Lcom/github/rjeschke/txtmark/BlockEmitter;ZZLcom/github/rjeschke/txtmark/SpanEmitter;Ljava/util/List;)V

    return-object v9
.end method

.method public convertNewline2Br()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br:Z

    return-object p0
.end method

.method public enableSafeMode()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->safeMode:Z

    return-object p0
.end method

.method public forceExtentedProfile()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtendedProfile:Z

    return-object p0
.end method

.method public varargs registerPlugins([Lorg/markdown4j/Plugin;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 4

    .line 269
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 271
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->plugins:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setCodeBlockEmitter(Lcom/github/rjeschke/txtmark/BlockEmitter;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    return-object p0
.end method

.method public setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    return-object p0
.end method
