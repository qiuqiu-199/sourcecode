.class public Lcom/github/rjeschke/txtmark/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rjeschke/txtmark/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

.field public static final DEFAULT_SAFE:Lcom/github/rjeschke/txtmark/Configuration;


# instance fields
.field final codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

.field final convertNewline2Br:Z

.field final decorator:Lcom/github/rjeschke/txtmark/Decorator;

.field final encoding:Ljava/lang/String;

.field final forceExtendedProfile:Z

.field final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/markdown4j/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field final safeMode:Z

.field final specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    sput-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

    .line 75
    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->enableSafeMode()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    sput-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT_SAFE:Lcom/github/rjeschke/txtmark/Configuration;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;Lcom/github/rjeschke/txtmark/BlockEmitter;ZZLcom/github/rjeschke/txtmark/SpanEmitter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/github/rjeschke/txtmark/Decorator;",
            "Lcom/github/rjeschke/txtmark/BlockEmitter;",
            "ZZ",
            "Lcom/github/rjeschke/txtmark/SpanEmitter;",
            "Ljava/util/List<",
            "Lorg/markdown4j/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    .line 91
    iput-object p2, p0, Lcom/github/rjeschke/txtmark/Configuration;->encoding:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    .line 93
    iput-object p4, p0, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    .line 94
    iput-boolean p6, p0, Lcom/github/rjeschke/txtmark/Configuration;->convertNewline2Br:Z

    .line 95
    iput-boolean p5, p0, Lcom/github/rjeschke/txtmark/Configuration;->forceExtendedProfile:Z

    .line 96
    iput-object p7, p0, Lcom/github/rjeschke/txtmark/Configuration;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    .line 97
    iput-object p8, p0, Lcom/github/rjeschke/txtmark/Configuration;->plugins:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    .line 107
    new-instance v0, Lcom/github/rjeschke/txtmark/Configuration$Builder;

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;-><init>()V

    return-object v0
.end method
