.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactoryHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 1

    .line 78
    new-instance p1, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;

    iget-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;-><init>([Ljava/lang/String;)V

    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "http.protocol.cookie-datepatterns"

    .line 65
    invoke-interface {p1, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 71
    :cond_0
    new-instance p1, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;

    invoke-direct {p1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 73
    :cond_1
    new-instance p1, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;-><init>()V

    return-object p1
.end method
