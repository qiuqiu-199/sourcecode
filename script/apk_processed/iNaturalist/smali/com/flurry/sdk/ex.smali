.class public Lcom/flurry/sdk/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J = 0x3e8L

.field private static b:Lcom/flurry/sdk/ex;


# instance fields
.field private final c:Lcom/flurry/sdk/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/flurry/sdk/ey;

    invoke-direct {v0}, Lcom/flurry/sdk/ey;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    sget-wide v1, Lcom/flurry/sdk/ex;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ey;->a(J)V

    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ey;->a(Z)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ex;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ex;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/flurry/sdk/ex;

    invoke-direct {v1}, Lcom/flurry/sdk/ex;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;

    .line 17
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/sdk/ey$a;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ey;->a(Lcom/flurry/sdk/ey$a;)V

    .line 27
    iget-object p1, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {p1}, Lcom/flurry/sdk/ey;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {p1}, Lcom/flurry/sdk/ey;->d()I

    move-result p1

    if-lez p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {p1}, Lcom/flurry/sdk/ey;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/flurry/sdk/ey$a;)Z
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ey;->b(Lcom/flurry/sdk/ey$a;)Z

    move-result p1

    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Lcom/flurry/sdk/ey;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Lcom/flurry/sdk/ey;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    throw p1
.end method
