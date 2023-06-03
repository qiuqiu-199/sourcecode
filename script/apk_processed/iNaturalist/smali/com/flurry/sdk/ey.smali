.class public Lcom/flurry/sdk/ey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ey$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ey"


# instance fields
.field private final b:Lcom/flurry/sdk/dt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dt<",
            "Lcom/flurry/sdk/ey$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Lcom/flurry/sdk/fc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/flurry/sdk/dt;

    invoke-direct {v0}, Lcom/flurry/sdk/dt;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dt;

    const-wide/16 v0, 0x3e8

    .line 24
    iput-wide v0, p0, Lcom/flurry/sdk/ey;->c:J

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/flurry/sdk/ey;->d:Z

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z

    .line 28
    new-instance v0, Lcom/flurry/sdk/ey$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ey$1;-><init>(Lcom/flurry/sdk/ey;)V

    iput-object v0, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ey;)Ljava/util/List;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/flurry/sdk/ey;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/flurry/sdk/ey;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/flurry/sdk/ey;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/flurry/sdk/ey;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/flurry/sdk/ey;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/flurry/sdk/ey;)Lcom/flurry/sdk/fc;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;

    return-object p0
.end method

.method static synthetic e(Lcom/flurry/sdk/ey;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/flurry/sdk/ey;->c:J

    return-wide v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/flurry/sdk/ey;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ey$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dt;

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 59
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;

    iget-wide v2, p0, Lcom/flurry/sdk/ey;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/flurry/sdk/ey;->c:J

    return-void
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/ey$a;)V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dt;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dt;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/flurry/sdk/ey;->d:Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 66
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/flurry/sdk/ey$a;)Z
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dt;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dt;->b(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dt;

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->b()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
