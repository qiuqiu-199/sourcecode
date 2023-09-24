.class public Lorg/apache/http/client/protocol/HttpClientContext;
.super Lorg/apache/http/protocol/HttpCoreContext;
.source "HttpClientContext.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field public static final AUTHSCHEME_REGISTRY:Ljava/lang/String; = "http.authscheme-registry"

.field public static final AUTH_CACHE:Ljava/lang/String; = "http.auth.auth-cache"

.field public static final COOKIESPEC_REGISTRY:Ljava/lang/String; = "http.cookiespec-registry"

.field public static final COOKIE_ORIGIN:Ljava/lang/String; = "http.cookie-origin"

.field public static final COOKIE_SPEC:Ljava/lang/String; = "http.cookie-spec"

.field public static final COOKIE_STORE:Ljava/lang/String; = "http.cookie-store"

.field public static final CREDS_PROVIDER:Ljava/lang/String; = "http.auth.credentials-provider"

.field public static final HTTP_ROUTE:Ljava/lang/String; = "http.route"

.field public static final PROXY_AUTH_STATE:Ljava/lang/String; = "http.auth.proxy-scope"

.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"

.field public static final REQUEST_CONFIG:Ljava/lang/String; = "http.request-config"

.field public static final TARGET_AUTH_STATE:Ljava/lang/String; = "http.auth.target-scope"

.field public static final USER_TOKEN:Ljava/lang/String; = "http.user-token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lorg/apache/http/protocol/HttpCoreContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lorg/apache/http/protocol/HttpCoreContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    return-void
.end method

.method public static adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;
    .locals 1

    .line 139
    instance-of v0, p0, Lorg/apache/http/client/protocol/HttpClientContext;

    if-eqz v0, :cond_0

    .line 140
    check-cast p0, Lorg/apache/http/client/protocol/HttpClientContext;

    return-object p0

    .line 142
    :cond_0
    new-instance v0, Lorg/apache/http/client/protocol/HttpClientContext;

    invoke-direct {v0, p0}, Lorg/apache/http/client/protocol/HttpClientContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    return-object v0
.end method

.method public static create()Lorg/apache/http/client/protocol/HttpClientContext;
    .locals 2

    .line 147
    new-instance v0, Lorg/apache/http/client/protocol/HttpClientContext;

    new-instance v1, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    return-object v0
.end method

.method private getLookup(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/http/config/Lookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/http/config/Lookup<",
            "TT;>;"
        }
    .end annotation

    .line 185
    const-class p2, Lorg/apache/http/config/Lookup;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/config/Lookup;

    return-object p1
.end method


# virtual methods
.method public getAuthCache()Lorg/apache/http/client/AuthCache;
    .locals 2

    const-string v0, "http.auth.auth-cache"

    .line 213
    const-class v1, Lorg/apache/http/client/AuthCache;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/AuthCache;

    return-object v0
.end method

.method public getAuthSchemeRegistry()Lorg/apache/http/config/Lookup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation

    const-string v0, "http.authscheme-registry"

    .line 197
    const-class v1, Lorg/apache/http/auth/AuthSchemeProvider;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getLookup(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieOrigin()Lorg/apache/http/cookie/CookieOrigin;
    .locals 2

    const-string v0, "http.cookie-origin"

    .line 180
    const-class v1, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieOrigin;

    return-object v0
.end method

.method public getCookieSpec()Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    const-string v0, "http.cookie-spec"

    .line 176
    const-class v1, Lorg/apache/http/cookie/CookieSpec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieSpec;

    return-object v0
.end method

.method public getCookieSpecRegistry()Lorg/apache/http/config/Lookup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    const-string v0, "http.cookiespec-registry"

    .line 189
    const-class v1, Lorg/apache/http/cookie/CookieSpecProvider;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getLookup(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 2

    const-string v0, "http.cookie-store"

    .line 168
    const-class v1, Lorg/apache/http/client/CookieStore;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 2

    const-string v0, "http.auth.credentials-provider"

    .line 205
    const-class v1, Lorg/apache/http/client/CredentialsProvider;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CredentialsProvider;

    return-object v0
.end method

.method public getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;
    .locals 2

    const-string v0, "http.route"

    .line 159
    const-class v1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/routing/RouteInfo;

    return-object v0
.end method

.method public getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;
    .locals 2

    const-string v0, "http.auth.proxy-scope"

    .line 225
    const-class v1, Lorg/apache/http/auth/AuthStateHC4;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthStateHC4;

    return-object v0
.end method

.method public getRedirectLocations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    const-string v0, "http.protocol.redirect-locations"

    .line 164
    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRequestConfig()Lorg/apache/http/client/config/RequestConfig;
    .locals 2

    const-string v0, "http.request-config"

    .line 241
    const-class v1, Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/config/RequestConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    sget-object v0, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    :goto_0
    return-object v0
.end method

.method public getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;
    .locals 2

    const-string v0, "http.auth.target-scope"

    .line 221
    const-class v1, Lorg/apache/http/auth/AuthStateHC4;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthStateHC4;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/Object;
    .locals 1

    const-string v0, "http.user-token"

    .line 233
    invoke-virtual {p0, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserToken(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "http.user-token"

    .line 229
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAuthCache(Lorg/apache/http/client/AuthCache;)V
    .locals 1

    const-string v0, "http.auth.auth-cache"

    .line 217
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAuthSchemeRegistry(Lorg/apache/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http.authscheme-registry"

    .line 201
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieSpecRegistry(Lorg/apache/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http.cookiespec-registry"

    .line 193
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 1

    const-string v0, "http.cookie-store"

    .line 172
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .locals 1

    const-string v0, "http.auth.credentials-provider"

    .line 209
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRequestConfig(Lorg/apache/http/client/config/RequestConfig;)V
    .locals 1

    const-string v0, "http.request-config"

    .line 246
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserToken(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "http.user-token"

    .line 237
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
