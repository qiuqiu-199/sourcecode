.class public Lorg/apache/http/client/methods/HttpTraceHC4;
.super Lorg/apache/http/client/methods/HttpRequestBaseHC4;
.source "HttpTraceHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "TRACE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;-><init>()V

    .line 71
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpTraceHC4;->setURI(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpTraceHC4;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "TRACE"

    return-object v0
.end method
