.class public Lcom/flurry/sdk/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "dn"

.field private static b:Lcom/flurry/sdk/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dn;
    .locals 2

    const-class v0, Lcom/flurry/sdk/dn;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dn;->b:Lcom/flurry/sdk/dn;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/flurry/sdk/dn;

    invoke-direct {v1}, Lcom/flurry/sdk/dn;-><init>()V

    sput-object v1, Lcom/flurry/sdk/dn;->b:Lcom/flurry/sdk/dn;

    .line 29
    :cond_0
    sget-object v1, Lcom/flurry/sdk/dn;->b:Lcom/flurry/sdk/dn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()I
    .locals 4

    .line 33
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "AgentVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    sget-object v1, Lcom/flurry/sdk/dn;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAgentVersion() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method c()I
    .locals 2

    .line 39
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "ReleaseMajorVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method d()I
    .locals 2

    .line 43
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "ReleaseMinorVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 2

    .line 47
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "ReleasePatchVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 2

    .line 51
    invoke-static {}, Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/dq;

    move-result-object v0

    const-string v1, "ReleaseBetaVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    .line 56
    invoke-virtual {p0}, Lcom/flurry/sdk/dn;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "."

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 62
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Flurry_Android_%d_%d.%d.%d%s%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/dn;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/flurry/sdk/dn;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/flurry/sdk/dn;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/flurry/sdk/dn;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/flurry/sdk/dn;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->c()Lcom/flurry/sdk/dj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->c()Lcom/flurry/sdk/dj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->c()Lcom/flurry/sdk/dj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->c()Lcom/flurry/sdk/dj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->o()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/dr;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->c()Lcom/flurry/sdk/dj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->p()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
